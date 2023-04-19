/*
 * spi.h
 *
 *  Created on: 28.06.2017
 *      Author: root
 */

#ifndef SRC_SPI_H_
#define SRC_SPI_H_


int InitSpi();
void ADC_SetControlBuffer(int Channel);
int ADC_Read(int Slave, int Channel);
int ADC_read_hex(int Slave, int Channel);
void DAC_SetControlBuffer(int Voltage, int Channel);
int DAC_Write(int Slave, int Channel, int Value);
int DAC_Shutdown(int Channel, int Slave);
void DAC_ResetAll();
int StopSpi();





#endif /* SRC_SPI_H_ */
