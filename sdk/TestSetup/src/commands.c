#include <stdio.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xuartlite_l.h"
#include "xil_printf.h"

#include "commands.h"
#include "scb.h"
#include "tools.h"
#include "spi.h"
#include "gpio.h"
#include "seuip.h"
#include "pspp.h"
#include "led.h"

void read_data(u8 addr)
{
	u16 rx, i;
	t_scbmaster_ctrl_reg ctrl;
	t_scbmaster_stat_reg stat;

	stat.reg = 0;
	char str[5] = "    ";
	char out[3] = "  ";
	ctrl.bits.slave_address = 0x50+addr;
	ctrl.bits.tx_number_bytes = 1;
	ctrl.bits.rx_number_bytes = 15;
	ctrl.bits.tx_start = 1;
	ctrl.bits.rx_start = 1;
	// register address to write
	master_writeReg(TX_BYTE0,0);
	master_writeReg(CONTROL,ctrl.reg);

	ms_delay(2); // DO NOT REMOVE, AxiBUS will read old values if you do.
	while (stat.bits.done == 0)
	{
		stat.reg = master_readReg(STATUS);
	}

	print("r ");

	print(" ");
	u8tohex(addr, str);
	print(str);
	//y+j: letzte änderung, das fragt der in python ab
	char test[3] = "  ";
	test[0] = u8toascii(stat.bits.tx_bytes);
	print(" #written ");
	print(test);
	test[0] = u8toascii(stat.bits.rx_bytes);
	print("#read ");
	print(test);

	for (i = 0; i < stat.bits.rx_bytes; i++)
	{
		print_newline();
		if (i < 10)
		{
			print("0");
		}
		xil_printf("%i", i);
		print(" ");
		rx = master_readReg(RX_BYTE0+i);
		u16tohex(rx,str);
		out[0] = str[1];
		out[1] = str[2];
		if (str[0] == '1')
		{

			print(out);
			print(" ");

			for (int i = 0; i < 8; i++)
			{
				if ((rx << i) & 0x800)
				{
					print("1");
				}
				else
				{
					print("0");
				}
			}
		}
		else
		{
			print("HH ");
		}
	}
	print_newline();
	char tmp[2] = " ";
	print("Bytes sent: ");
	tmp[0] = u8toascii(stat.bits.tx_bytes);
	print(tmp);
	print(", Bytes received: ");
	tmp[0] = u8toascii(stat.bits.rx_bytes);
	print(tmp);
	print_newline();

}

void write_data(u8 addr, u8 reg, u8 data)
{
	t_scbmaster_ctrl_reg ctrl;
	t_scbmaster_stat_reg stat;
	char str[5] = "    ";

	stat.reg = 0;

	// prepare control register
	ctrl.bits.slave_address = 0x50+addr;
	ctrl.bits.tx_number_bytes = 2;
	ctrl.bits.rx_number_bytes = 0;
	ctrl.bits.tx_start = 1;
	ctrl.bits.rx_start = 0;

	// register address to write
	master_writeReg(TX_BYTE0,reg);
	master_writeReg(TX_BYTE1,data);

	master_writeReg(CONTROL,ctrl.reg);
	ms_delay(2);
	while (stat.bits.done == 0)
	{
		stat.reg = master_readReg(STATUS);
	}

	print("Bytes sent: ");
	//print(" ");
	str[0] = u8toascii(stat.bits.tx_bytes);
	print(str);
	print(", Bytes received: ");
	str[0] = u8toascii(stat.bits.rx_bytes);
	print(str);
	print_newline();
	xil_printf("W %x %x %02x\r\n", addr, reg, data);

}

void list_chips()
{
	char out[3] = "  ";

	int found = 0;
		for(int addr = 0; addr < 16; addr++)
		{
			t_scbmaster_ctrl_reg ctrl;
			t_scbmaster_stat_reg stat;

			stat.reg = 0;
			ctrl.bits.slave_address = 0x50+addr;
			ctrl.bits.tx_number_bytes = 1;
			ctrl.bits.rx_number_bytes = 13;
			ctrl.bits.tx_start = 1;
			ctrl.bits.rx_start = 1;

			// register address to write
			master_writeReg(TX_BYTE0,0);
			master_writeReg(CONTROL,ctrl.reg);

			ms_delay(2); // DO NOT REMOVE, AxiBUS will read old values if you do.
			while (stat.bits.done == 0)
			{
				stat.reg = master_readReg(STATUS);
			}
			char str[5] = "    ";

			u16 rx1 = master_readReg(RX_BYTE0);
			u16 rx2 = master_readReg(RX_BYTE0 + 1);

			if(!(stat.bits.rx_bytes < 2 || (rx1 == rx2 && rx1 == 4096)))
			{
				print("Addr ");
			u8tohex(addr, str);
			out[0] = str[1];
			out[1] = ' ';
			print(out);

				found = 1;

				print("ID ");
				u16tohex(rx1, str);
				out[0] = str[1];
				out[1] = str[2];
				print(out);
				u16tohex(rx2, str);
				out[0] = str[1];
				out[1] = str[2];
				print(out);
				print_newline();
			}
		}

	if(!found)
	{
		print("No chips detected");
		print_newline();
	}
}

void cmd_adc(u8 *Buffer)
/* Handle commands to set ADC
 * inputs:
 * 	Buffer = serial command
 */
{
	int Slave;
	int Channel;
	int Voltage;

	// get parameters from command
	Slave = 0x1 << (asciitoint(Buffer[2]) - 1);
	Channel = asciitoint(Buffer[3]);

	// read voltage from ADC
	Voltage = ADC_Read(Slave, Channel);
	xil_printf("ADC: Slave %i Channel %i Voltage %04i\r\n", Slave, Channel,
			Voltage);
}

void cmd_adc_monitoring(u8 *Buffer)
/* command to read ADC values for monitoring important values and return Hex values
 * inputs:
 * 	Buffer = serial command
 */
{
	int vsup, isup, vddd, vdda, vref, vbg, vint, temp0, temp1;
  // read adc channels
  ADC_read_hex(0x1,1); // capture Vsup
  vsup = ADC_read_hex(0x1,3); // read Vsup, capture Isup
  isup = ADC_read_hex(0x1,1); // read Isup
  ADC_read_hex(0x2,7); // capture Vdda
  vdda = ADC_read_hex(0x2,4); // read Vdda, capture Vddd
  vddd = ADC_read_hex(0x2,5); // read Vddd, capture Vref
  vref = ADC_read_hex(0x2,6); // read Vref, capture Vbg
  vbg  = ADC_read_hex(0x2,8); // read Vbg,  capture Vint
  vint = ADC_read_hex(0x2,7); // read Vint
	ADC_read_hex(0x4, 3); // capture Temp0
	temp0 = ADC_read_hex(0x4, 4); // read Temp0, capture Temp1
	temp1 = ADC_read_hex(0x4, 3); // read Temp1
	// return values
	xil_printf("A %03X %03X %03X %03X %03X %03X %03X %03X %03X\r\n",
				        vsup,isup,vdda,vddd,vref,vbg, vint,temp0,temp1);
}

void cmd_adc_all(u8 *Buffer)
/* command to read all ADC values and return Hex values
 * inputs:
 * 	Buffer = serial command
 */
{
	int vsup, isup, vddd, vdda, vref, vbg, vint, temp0, temp1, thtemp, thmod, vglobal,vseu,iby,vgnd;
  // read adc channels
  ADC_read_hex(0x1,1); // capture Vsup
  vsup = ADC_read_hex(0x1,2); // read Vsup, capture Vgnd
  vgnd = ADC_read_hex(0x1,3); // read Vgnd, capture Isup
  isup = ADC_read_hex(0x1,7); // read Isup, capture Iby
  iby = ADC_read_hex(0x1,1); // read Iby
  ADC_read_hex(0x2,7); // capture Vdda
  vdda = ADC_read_hex(0x2,4); // read Vdda, capture Vddd
  vddd = ADC_read_hex(0x2,5); // read Vddd, capture Vref
  vref = ADC_read_hex(0x2,6); // read Vref, capture Vbg
  vbg  = ADC_read_hex(0x2,8); // read Vbg,  capture Vint
  vint = ADC_read_hex(0x2,1); // read Vint, capture ThTemp
  thtemp = ADC_read_hex(0x2,2); // read ThTemp, capture ThMod
  thmod = ADC_read_hex(0x2,3); // read ThMod, capture Vglobal
  vglobal = ADC_read_hex(0x2,7); // read Vglobal
	ADC_read_hex(0x3, 3); // capture Temp0
	temp0 = ADC_read_hex(0x4, 4); // read Temp0, capture Temp1
	temp1 = ADC_read_hex(0x4, 5); // read Temp1, capture Vseu
	vseu = ADC_read_hex(0x4, 3); // read Vseu
	// return values
	xil_printf("A %03X %03X %03X %03X %03X %03X %03X %03X %03X %03X %03X %03X %03X %03X %03X\r\n",
			          vsup,isup,vdda,vddd,vref,vbg, vint,temp0,temp1,thtemp,thmod,vglobal,vseu,iby,vgnd);
}

void cmd_dac(u8 *Buffer)
/* Handle commands to set DAC
 * inputs:
 * 	Buffer = serial command
 */
{
	int Slave;
	int Channel;
	int Value;
	// command to shut off all DACs (send off)
  if ( (Buffer[2]=='o') && (Buffer[3]=='f') && (Buffer[4]=='f'))
  {
    DEBUG_PRINT_LV1("shutting down DACs");
    DAC_ResetAll();
      }
	else
	{
		// get DAC settings from command
		Slave = asciitoint(Buffer[2]) - 1;
		Channel = asciitoint(Buffer[3]);
		Value = asciitoint(Buffer[5]) * 1000 + asciitoint(Buffer[6]) * 100
				+ asciitoint(Buffer[7]) * 10 + asciitoint(Buffer[8]);
		// set DAC
    DAC_Write(Slave, Channel, Value);
		// confirmation
		xil_printf("DAC: Slave %i Channel %i Voltage %i\r\n", Slave, Channel,
				Value);
  }
}

void cmd_gpio(u8 *Buffer)
/* Handle the command to set or read GPIO pins
 * inputs:
 * 	Buffer = serial command
 */
{
  char port_direction = Buffer[2];
	int port = asciitou8(Buffer[4]);
	int NewValue = asciitou8(Buffer[5]);

	if (port_direction == 'o')
{
		// set output
    if (port>=0 && port < 5)
    {
      gpio_set_output(port,NewValue);
    }
    else 
    {
      print("Wrong output port. Must be between 0 and 4. Nothing was set.");
    }
  }
	else
	{
    int value = gpio_read_input();
    value = value & 0x3F;

    xil_printf("GPIO: Value %02x\n",value);
  }
}

void cmd_scb(u8 *Buffer)
/* Handle the SCB command
 * inputs:
 * 	Buffer = serial command
 */
{
  // convert data from buffer
  u8 addr = asciitou8(Buffer[4]);
  u8 reg = asciitou8(Buffer[6]);
  u8 data = twoasciitou8(&Buffer[8]);
  int adc, temp1, temp2, volt;
  u16 adcs[8];
  u8 bytes[15];
  int i;

  // select SCB command to execute
  switch(Buffer[2])
  {
		case 'l':
			list_chips();
			break;
    // for compability
		case 'r':
			read_data(addr);
			break;
		case 'w':
			write_data(addr, reg, data);
			break; //addr = 0-F, reg = 0-C, data = 00-FF
    // Read simple register function
    case 'R':
      if (pspp_read_reg(addr, reg, 1, &data) < 0)
        xil_printf("R SCB communication error\r\n");
      else
        xil_printf("R %x %x %02x\r\n",addr, reg, data);
      break;
    // read all registers
    case 'G':
      if (pspp_read_reg(addr, 0, 15, bytes) < 0)
        xil_printf("D SCB communication error\r\n");
      else
      {
        xil_printf("G %x",addr);
        // return register data
        for (i = 0; i < 15; i++)
        {
          xil_printf(" %02x",bytes[i]);
        }
        xil_printf("\r\n");
      }
      break;
    // read all PSPP data
    case 'D':
      // read all adc values
      for (i = 0; i < 8; i++)
      {
        adcs[i] = pspp_read_adc(addr, i);
        if (adcs[8] < 0)
        {
          xil_printf("D SCB communication error ADC\r\n");
          break;
        }
      }
      // read all registers
      if (pspp_read_reg(addr, 0, 15, bytes) < 0)
        xil_printf("D SCB communication error\r\n");
      else // return value if everything worked
      {
        xil_printf("D %x",addr);
        // return register data
        for (i = 0; i < 15; i++)
        {
          xil_printf(" %02x",bytes[i]);
        }
        // return adc values
        for (i = 0; i < 8; i++)
        {
          xil_printf(" %03x",adcs[i]);
        }
        xil_printf("\r\n");
      }
      break;
    // read ADC value
    case 'A':
      adc = pspp_read_adc(addr, reg);
      if (adc < 0)
    	xil_printf("A SCB communication error\r\n");
      else
    	xil_printf("A %x %x %03x\r\n",addr, reg, adc);
      break;
    // read PSPP monitoring values
    case 'M':
      volt = pspp_read_adc(addr, 0);
      temp1 = pspp_read_adc(addr, 2);
      temp2 = pspp_read_adc(addr, 3);
			if ((pspp_read_reg(addr, 6, 1, &data) < 0) || (volt < 0)
					|| (temp1 < 0) || (temp2 < 0))
        xil_printf("M SCB communication error\r\n");
      else
				xil_printf("M %x %03x %03x %03x %02x\r\n", addr, volt, temp1,
						temp2, data);
      break;
		default:
			xil_printf("undefined scb command: %c\r\n", Buffer[2]);
			break;
  }

}

void cmd_reset(u8* Buffer)
/* Reset measurement board
 * Set all outputs to 0 and set all DACs to 0
 * inputs:
 * 	Buffer = serial command
 */
{
  DAC_ResetAll();
  gpio_clear_outputs();
}

void cmd_shift(u8* buffer)
{
  int i;
  u8 reg;
  u32 data;
  switch (buffer[1])
  {
    case 'c':
      seuip_clear_fifos();
      seuip_clear_counters();
      break;
    case 'r':
      reg = asciitou8(buffer[3]);
      xil_printf("SEUIP Reg %x, %08x\r\n",reg, seuip_read_reg(reg));
      break;
    case 'w':
      reg = asciitou8(buffer[3]);
      data = asciitou8(buffer[5]) << 28;
      data += asciitou8(buffer[6]) << 24;
      data += asciitou8(buffer[7]) << 20;
      data += asciitou8(buffer[8]) << 16;
      data += asciitou8(buffer[9]) << 12;
      data += asciitou8(buffer[10]) << 8;
      data += asciitou8(buffer[11]) << 4;
      data += asciitou8(buffer[12]);
      seuip_write_reg(reg,data);
      xil_printf("SEUIP Write Reg %x, %08x, should %08x\r\n",reg, seuip_read_reg(reg),data);
      break;
    case 'f':
      data = 0;
      for (i = 0; (i < 8) && (buffer[i+3] != 0); i++)
      {
        data *= 10;
        data += asciitou8(buffer[i+3]);
      }
      seuip_set_freq(data);
      break;
    case 'o':
      seuip_shift_once();
      break;
    case 'p':
      seuip_read_fifos();
      break;
    default: // shift once and print data
      data = asciitou8(buffer[2]) << 28;
      data += asciitou8(buffer[3]) << 24;
      data += asciitou8(buffer[4]) << 20;
      data += asciitou8(buffer[5]) << 16;
      data += asciitou8(buffer[6]) << 12;
      data += asciitou8(buffer[7]) << 8;
      data += asciitou8(buffer[8]) << 4;
      data += asciitou8(buffer[9]);
      seuip_shift(data);
      seuip_read_seu_counters();
  }
}

void cmd_fpgaID(u8* buffer)
/* Read ID set by the four switches on the Arty board
 * inputs:
 * 	Buffer = serial command
 */
{
  u8 id = read_switches();
  xil_printf("ID %x\r\n",id);
}

void cmd_help(u8* Buffer)
/* Help text
 * inputs:
 * 	Buffer = serial command
 */
{
  xil_printf("Help\r\n");
  xil_printf("h = Print help\r\n");
  xil_printf("g = \r\n");
  xil_printf("i = FPGA ID set by switches\r\n");
  xil_printf("v = Print firmware version\r\n");
  xil_printf("q = Echo 'q'\r\n");
  xil_printf("# ADC/DAC commands\r\n");
  xil_printf("a ac = Read ADC channel\r\n");
  xil_printf("A = Read all ADCs to monitor chip regulator\r\n");
  xil_printf("B = Read all ADCs to monitor chip\r\n");
  xil_printf("d dc xxxx= Set DAC d channel c to xxxx in mV\r\n");
  xil_printf("d off = set all DAC channels to 0\r\n");
  xil_printf("r = Reset all DACs and outputs\r\n");
  xil_printf("# SCB commands\r\n");
  xil_printf("s l = list all connected chips\r\n");
  xil_printf("s r P = read all registers from chip P (hex) \r\n");
  xil_printf("s w P A DD= write to chip P register A with value DD (all hex) \r\n");
  xil_printf("s D P = read from chip P all registers (all hex) \r\n");
  xil_printf("s R P A = read from chip P single register A (all hex) \r\n");
  xil_printf("s A P A = read from chip P adc channel A (all hex) \r\n");
  xil_printf("s M P = read from chip P (hex) the monitoring data (volt, temp1, temp2 and bypass register) \r\n");
  xil_printf("# SEU IP commands\r\n");
  xil_printf("S DDDDDDDD = Shift with given data D and return content read in\r\n");
  xil_printf("Sc         = Clear SEU fifo and Counters\r\n");
  xil_printf("Sf FFFFFFFF = Set shift frequency, given in Hz (0-10MHz)\r\n");
  xil_printf("So         = Shift once\r\n");
  xil_printf("Sp         = Print content of fifos\r\n");
  xil_printf("Sr A       = Read register from SEU IP with register address A in Hex\r\n");
  xil_printf("Sw A DDDDDDDD = Write register to SEU IP with A = reg address in Hex and D = 32 data\r\n");
  xil_printf("\r\n");
}

void cmd_select(u8* Buffer)
/* Select command to execute
 * inputs:
 * 	Buffer = serial command
 */
{
  switch(Buffer[0])
  {
		case 'a':
			cmd_adc(Buffer);
			break;
		case 'A':
			cmd_adc_monitoring(Buffer);
			break;
		case 'B':
			cmd_adc_all(Buffer);
			break;
		case 'd':
			cmd_dac(Buffer);
			break;
		case 'g':
			cmd_gpio(Buffer);
			break;
		case 'h':
			cmd_help(Buffer);
			break;
		case 'i':
			cmd_fpgaID(Buffer);
			break;
		case 'q':
			xil_printf("q\r\n");
			break;
		case 'r':
			cmd_reset(Buffer);
			break;
    case 's' : 
      cmd_scb(Buffer); 
      break;
    case 'S': 
      cmd_shift(Buffer); 
      break;
    case 'v': 
			xil_printf(VERSION "\r\n");
			break;
		default:
			xil_printf("undefined: %c\r\n", Buffer[0]);
			break;
  }
}
