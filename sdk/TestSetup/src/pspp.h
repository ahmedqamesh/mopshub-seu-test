/*
 * pspp.h
 *
 *  Created on: Jul 17, 2017
 *      Author: nlehmann
 */

#ifndef SRC_PSPP_H_
#define SRC_PSPP_H_

// PSPP registers
#define PSPP_REG_ID0      0x0
#define PSPP_REG_ID1      0x1
#define PSPP_REG_ADCR0    0x2
#define PSPP_REG_ADCR1    0x3
#define PSPP_REG_DIN      0x4
#define PSPP_REG_DOUT     0x5
#define PSPP_REG_SHUNT    0x6
#define PSPP_REG_ADCMUX   0x7
#define PSPP_REG_ADCL0    0x8
#define PSPP_REG_ADCL1    0x9
#define PSPP_REG_CTRL     0xA
#define PSPP_REG_BGHI     0xB
#define PSPP_REG_BGLO     0xC
#define PSPP_REG_SEUCNTHI 0xD
#define PSPP_REG_SEUCNTLO 0xE
#define PSPP_NUM_REGS     15    // number of registers in the chip



int pspp_read_reg(u8 addr, u8 start_reg, u8 nb_reg, u8* data);
int pspp_write_reg(u8 addr, u8 start_reg, u8 nbw, u8 *w);
int pspp_write_read_reg(u8 addr, u8 start_reg, u8 nbw, u8 nbr, u8 *w, u8 *r);
int pspp_read_adc(u8 addr, u8 adcch);


#endif /* SRC_PSPP_H_ */
