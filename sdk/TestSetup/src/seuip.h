/*
 * shift.h
 *
 *  Created on: Nov 22, 2017
 *      Author: nlehmann
 */

#include "xil_types.h"

#define SEUIP_REG_CTRL		0
#define SEUIP_REG_CTRL_SET	1
#define SEUIP_REG_CTRL_CLR	2
#define SEUIP_REG_FREQUENCY	3
#define SEUIP_REG_DATAOUT		4
#define SEUIP_REG_SIMPLE_DATA	5
#define SEUIP_REG_TMR_DATA	6
#define SEUIP_REG_SCNT_ONES	7
#define SEUIP_REG_SCNT_ZEROS	8
#define SEUIP_REG_SCNT_HIGH	9
#define SEUIP_REG_SCNT_LOW	10
#define SEUIP_REG_TCNT_ONES	11
#define SEUIP_REG_TCNT_ZEROS	12
#define SEUIP_REG_TCNT_HIGH	13
#define SEUIP_REG_TCNT_LOW	14

#define INTC_DEVICE_INT_ID 		XPAR_AXI_INTC_0_DEVICE_ID

#define SYSTEM_FREQUENCY_HZ  100000000

typedef union
{
  struct {
    unsigned run : 1;
    unsigned unused : 2;
    unsigned clear_counters : 1;
    unsigned unused2 : 20;
    unsigned tmr_fifo_empty : 1;
    unsigned tmr_fifo_almost : 1;
    unsigned tmr_fifo_full : 1;
    unsigned simple_fifo_empty : 1;
    unsigned simple_fifo_almost : 1;
    unsigned simple_fifo_full : 1;
    unsigned out_fifo_full : 1;
    unsigned idle : 1;
  } bits;
  u32 reg;
} t_seuip_ctrl_reg;


void seuip_write_reg(int addr, u32 data);
u32  seuip_read_reg(int addr);

void seuip_clear_fifos(void);
void seuip_clear_counters(void);
void seuip_set_freq(u32 frequency);
void seuip_shift_once(void);
void seuip_read_fifos(void);
void seuip_shift(u32 data);
void seuip_read_seu_counters(void);
