//chips.c enthält alle Funktionen zur Kommunikation mit ADC und DAC.


#include <stdio.h>
#include "xil_printf.h"
#include "xspi.h"
#include "xspi_l.h"
#include "math.h" //Verarbeitung von Bits zu Spannung
#include "spi.h"
#include "tools.h"

#define SPI_ID XPAR_SPI_1_DEVICE_ID //hole id aus xparameter.h
#define SPI_BaseAddress XPAR_SPI_1_BASEADDR
#define BUFFER_SIZE 2

u8 SendBuffer[BUFFER_SIZE];
u8 RecvBuffer[BUFFER_SIZE];

XSpi Spi; //erstelle Spi instanz


/****************************************************************
* Initialisiert den Spi-Treiber. Dieser wird dabei in den Master-Mode.
* Als Übertragunsmodus ist der Polled-Mode eingestellt.
* Ebenso wird die Clockpolarität auf active-low und die Clockphase auf
* steigende Flanke eingestellt. Dies sind die für den ADC und DAC
* benötigten Einstellungen.
*
* Verlangt als Eingabe lediglich eine XSpi Instant.
*****************************************************************/
int InitSpi() {
	int Status;
	u32 CtrlReg;

    Status = XSpi_Initialize(&Spi, SPI_ID);
    if (Status!= XST_SUCCESS) {
    	return XST_FAILURE;
    }

    Status = XSpi_SelfTest(&Spi);
    xil_printf("Spi SelfTest: %i\n\r", Status);
    if (Status != XST_SUCCESS) {
    	return XST_FAILURE;
    }

    Status = XSpi_Start(&Spi);
    xil_printf("Spi Start: %i\n\r", Status);
    if (Status != XST_SUCCESS) {
        	return XST_FAILURE;
    }

    XSpi_IntrGlobalDisable(&Spi); //für polled-mode

    Status = XSpi_SetOptions(&Spi, XSP_MASTER_OPTION); //setze spi auf master-mode
    if (Status != XST_SUCCESS) {
        	return XST_FAILURE;
    }

    CtrlReg = XSpi_GetControlReg(&Spi);
    CtrlReg |= ~XSP_CR_LOOPBACK_MASK;
    //XSpi_SetControlReg(Spi, CtrlReg);

    CtrlReg = XSpi_GetControlReg(&Spi);
    CtrlReg |= XSP_CR_CLK_POLARITY_MASK;
    XSpi_SetControlReg(&Spi, CtrlReg ); //setze clk-polarität: active low

    CtrlReg = XSpi_GetControlReg(&Spi);
    CtrlReg |= XSP_CR_CLK_PHASE_MASK; //"data is valid on second edge of clk." adc nimmt daten bei steigender flanke.
    XSpi_SetControlReg(&Spi, CtrlReg);  //erste flanke ist fallend aufgrund von polarität.

	return XST_SUCCESS;
}



/****************************************************************
 * Schreibt den Sende-Buffer für das Control-Register des ADC.
 * Kanal wählt einen der 8 ADC-Kanäle aus.
 ****************************************************************
 *
 * Adc verlang als Input:
 * 0. Bit: 		Wird ignoriert.
 * 1. Bit: 		0.
 * 2.-4. Bit: 	Adresse des zu lesenden Registers. Siehe Funktion.
 * 5. Bit: 		Frage nach interner 2.5V Referenz. Gemessen werden nur Spannungen bis 2.3V, daher interne Referenz: 1.
 * 6.-7. Bit: 	Power-Modus des ADC. Normaler Modus wird verwendet: 0 und 0.
 ***************************************************************/
void ADC_SetControlBuffer(int Channel) {

	//Resette Buffer
	for (int i=0; i<BUFFER_SIZE; i++) {
		SendBuffer[i] = 0;
		RecvBuffer[i] = 0;
	}

	u8* Buffer = &SendBuffer[1];
	SendBuffer[0] = 1;

	*Buffer |= 0; // Powermodus Normal: PM1=0 PM0=0
	*Buffer |= 0; //Externe Referenz = 4

	switch(Channel) {
		case 1:  *Buffer |= 0; break; //Kanal 1
		case 2:  *Buffer |= 8; break; //Kanal 2
		case 3:  *Buffer |= 16; break; //...
		case 4:  *Buffer |= 24; break;
		case 5:  *Buffer |= 32; break;
		case 6:  *Buffer |= 40; break;
		case 7:  *Buffer |= 48; break;
		case 8:  *Buffer |= 56; break;
		default: *Buffer |= 0; break;
	}

	/*1. 8 bits vom control buffer ausgeben
	print("ADC_ControlBuffer: ");
	for (int j=0; j<BUFFER_SIZE; j++) {
		for (int i=0; i<8; i++) {
			if (( SendBuffer[1-j] << i) & 128) { print("1"); }
			else { print("0"); }
		}
	}

	print("\n\r");
	*/
}


/****************************************************************
* Lässt SendBuffer mit den ADC-Daten füllen und sendet diese an den ADC.
* Empfängt die Daten mit den Einstellung der vorherigen Übertragung und gibt diese als Int in mV zurück.
*
* Verlangt als Eingabe eine ADC-Kanalnummer (1-8) und eine SlaveSelect-Nummer (1-8).
*****************************************************************/
int ADC_Read(int Slave, int Channel) {
	int Status = 0;
	int Spannung = 0;

	ADC_SetControlBuffer(Channel);

	XSpi_SetSlaveSelect(&Spi, Slave);
	Status = XSpi_Transfer(&Spi, SendBuffer, RecvBuffer, BUFFER_SIZE);
	if (Status != XST_SUCCESS) {
		//xil_printf("\n\rTransfer: %i ", Status);
		return XST_FAILURE;
	}

  Status = XSpi_Transfer(&Spi, SendBuffer, RecvBuffer, BUFFER_SIZE);
  if (Status != XST_SUCCESS) {
    //xil_printf("\n\rTransfer: %i ", Status);
    return XST_FAILURE;
  }
	XSpi_SetSlaveSelect(&Spi, 0);

	RecvBuffer[1] &= 0x0f; //falls sich etwas störendes in den 1. 4 bits einfängt

	Spannung = 1000 * (int)RecvBuffer[1] * pow(2,8) *  2.5 / (pow(2,12)-1) \
			+ 1000 * (int)RecvBuffer[0] * 2.5 / (pow(2,12)-1);

	/*// control buffer ausgeben
	print("RecvBuffer: ");
	for (int j=0; j<BUFFER_SIZE; j++) {
		for (int i=0; i<8; i++) {
			if (( RecvBuffer[1-j] << i) & 128) { print("1"); }
			else { print("0"); }
		}

	}*/

	return Spannung;
}

int ADC_read_hex(int Slave, int Channel)
/*
 * Reads ADC on SPI and returns value of LAST conversion.
 * Call twice or with next channel to read from the same ADC
 */
{
  int Status = 0;
  bytes_2_word value;

  // set buffer to configure adc
  ADC_SetControlBuffer(Channel);

  // start spi
  XSpi_SetSlaveSelect(&Spi, Slave);
  // send spi command to convert and read last result
  Status = XSpi_Transfer(&Spi, SendBuffer, value.bytes, BUFFER_SIZE);
  if (Status != XST_SUCCESS)
   return -1;
  // stop spi
  XSpi_SetSlaveSelect(&Spi, 0);

  value.bytes[1] &= 0x0f;   // set uppermost 4 bits to zero

  return value.shorts[0];
}

/****************************************************************
* Schreibt die für den DAC nötigen daten in den SendBuffer.
* Der DAC wird auf die externe 2.5V Referenz des ADC sowie
* auf Output Gain x1 eingestellt. Der angegebene DAC-Kanal wird
* dabei immer in den active-mode versetzt. ist ein Kanal eingestellt
* wird dieser den eingestellten Wert behalten bis eine Änderung
* vorgenommen wird.
*
* Als Eingabe wird eine DAC-Spannung sowie ein DAC-Kanal benötigt.
****************************************************************/
void DAC_SetControlBuffer(int Voltage, int Channel) {

	//Resette Buffer
	for (int i=0; i<BUFFER_SIZE; i++) {
		SendBuffer[i] = 0;
		RecvBuffer[i] = 0;
	}

	u8* Buffer1 = &SendBuffer[1];
	u8* Buffer0 = &SendBuffer[0];

	switch(Channel) {
		case 1: *Buffer1 |= 0; break; //Kanal A.
		case 2: *Buffer1 |= 128; break; //Kanal B.
		default : *Buffer1 |= 0; break;
	}

	*Buffer1 |= 64; //V_Ref buffered da ADC-Referenz=2.5V verwendet wird.
	*Buffer1 |= 32; //Output Gain ist 1x.
	*Buffer1 |= 16; //Kanal wird verwendet. Anonsten ist der Kanal im Shutdown-Modus, also nicht aktiv.

	//Wert der DAC-Spannung in normierte dezimalzahl umwandeln.
	int Wert = (int) ((Voltage * 4095)/2500);

	//Setzt den Spannungswert in ein Bitmuster um.
	for (int i=0; i<4; i++) {
		if((Wert << i) & 2048 ){ *Buffer1 |= (int) pow(2,3-i); }
	}

	for (int i=0; i<8; i++) {
		if((Wert << i) & 128  ){ *Buffer0 |= (int) pow(2,7-i); }
	}

	/*1. 8 bits vom control buffer ausgeben
	print("DAC_ControlBuffer: ");
	for (int j=0; j<BUFFER_SIZE; j++) {
		for (int i=0; i<8; i++) {
			if (( SendBuffer[1-j] << i) & 128) { print("1"); }
			else { print("0"); }
		}
		print("  ");
	}

	print("\n\r");*/


}

int DAC_Write(int Slave, int Channel, int Value) {
	int Status;

	DAC_SetControlBuffer(Value, Channel); //SendBuffer mit DAC-Daten füllen.

	XSpi_SetSlaveSelect(&Spi, 0x1 << Slave);
	Status = XSpi_Transfer(&Spi, SendBuffer, RecvBuffer, BUFFER_SIZE);
	if (Status != XST_SUCCESS) {
		//xil_printf("\n\rTransfer: %i ", Status);
		return XST_FAILURE;
	}
	XSpi_SetSlaveSelect(&Spi, 0);

	return XST_SUCCESS;
}

/****************************************************************
*Setzt den Ausgang des DAC-Kanals auf GND und macht diesen hochohmig mit 500kOhm.
*****************************************************************/
int DAC_Shutdown(int Channel, int Slave) {
	int Status;

	//Resette Buffer
	for (int i=0; i<BUFFER_SIZE; i++) {
		SendBuffer[i] = 0;
		RecvBuffer[i] = 0;
	}

	u8* Buffer1 = &SendBuffer[1];

	switch(Channel) {
		case 1: *Buffer1 |= 0; break; //Kanal A.
		case 2: *Buffer1 |= 128; break; //Kanal B.
		default : *Buffer1 |= 0; break;
	}

	/*1. 8 bits vom control buffer ausgeben
	print("DAC_ControlBuffer: ");
	for (int j=0; j<BUFFER_SIZE; j++) {
		for (int i=0; i<8; i++) {
			if (( SendBuffer[1-j] << i) & 128) { print("1"); }
			else { print("0"); }
		}
		print("  ");
	}

	print("\n\r");*/


	XSpi_SetSlaveSelect(&Spi, Slave);
	Status = XSpi_Transfer(&Spi, SendBuffer, RecvBuffer, BUFFER_SIZE);
	if (Status != XST_SUCCESS) {
		//xil_printf("\n\rTransfer: %i ", Status);
		return XST_FAILURE;
	}
	XSpi_SetSlaveSelect(&Spi, 0);

	return XST_SUCCESS;
}

void DAC_ResetAll()
{
  DAC_Write(3,2,0); // Vbypass
  DAC_Write(5,2,0); // Ibypass
  DAC_Write(4,1,0); // Temp0
  DAC_Write(4,2,0); // Temp1
  DAC_Write(5,1,0); // Vmod
  DAC_Write(6,1,0); // Vos
  DAC_Write(6,2,0); // Iref
  DAC_Write(3,1,0); // Vsup
}

int StopSpi() {
	int Status;

	Status = XSpi_Stop(&Spi);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
