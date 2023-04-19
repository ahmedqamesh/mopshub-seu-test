/*
 * shift.c
 *
 *  Created on: Nov 29, 2018
 *      Author: nlehmann
 */
#include "seuip.h"

#include <stdio.h>
#include "xil_io.h"
#include "tools.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xintc.h"
#include "xil_exception.h"
#include "xil_printf.h"

#include "uart.h"


#define SEUIP_BASEADDR XPAR_SEUTESTIP3000_0_BASEADDR

u32  seuip_read_reg(int addr)
{
	return Xil_In32(SEUIP_BASEADDR + ((addr) << 2));
}

void seuip_write_reg(int addr, u32 data)
{
  Xil_Out32(SEUIP_BASEADDR + ((addr) << 2), data);
}

void seuip_set_freq(u32 frequency) // in Hz
{
  u32 div = SYSTEM_FREQUENCY_HZ/(2*frequency)-5;
  DEBUG_PRINT_LV1("Set divider to %d for frequency %d",div,frequency);
  // clear clock enable bit if selected frequency is 0
  if (frequency == 0)
  {
    DEBUG_PRINT_LV1("Disable clock");
	  seuip_write_reg(SEUIP_REG_CTRL_CLR,0x00000010);
  }
  else
  {
	  seuip_write_reg(SEUIP_REG_FREQUENCY,div);
	  seuip_write_reg(SEUIP_REG_CTRL_SET,0x00000010);
  }
}

void seuip_clear_fifos(void)
// Set clear FIFO flags
{
  seuip_write_reg(SEUIP_REG_CTRL_SET,0x6);
}

void seuip_clear_counters(void)
{
  seuip_write_reg(SEUIP_REG_CTRL_SET,0x8);
}

void seuip_read_fifos(void)
{
  int i = 0;
  t_seuip_ctrl_reg ctrl;
  // read Simple fifo until empty
  xil_printf("Simple Fifo:\r\n");
  do{
    xil_printf("%08X ",seuip_read_reg(SEUIP_REG_SIMPLE_DATA));
    i++;
    if (i%10 == 0)
      xil_printf("\r\n");
    ctrl.reg = seuip_read_reg(SEUIP_REG_CTRL);
  } while (ctrl.bits.simple_fifo_empty == 0);
  if (i%2) // read one more to read an even number from FIFO
    xil_printf("%08X ",seuip_read_reg(SEUIP_REG_SIMPLE_DATA));
  // read TMR fifo until empty
  i = 0;
  xil_printf("\r\nTMR Fifo:\r\n");
  do{
    xil_printf("%08X ",seuip_read_reg(SEUIP_REG_TMR_DATA));
    i++;
    if (i%10 == 0)
      xil_printf("\r\n");
    ctrl.reg = seuip_read_reg(SEUIP_REG_CTRL);
  } while (ctrl.bits.tmr_fifo_empty == 0);
  if (i%2) // read one more to read an even number from FIFO
    xil_printf("%08X ",seuip_read_reg(SEUIP_REG_TMR_DATA));
  xil_printf("\r\n");
}

void seuip_shift_once(void)
{
  seuip_write_reg(SEUIP_REG_CTRL_SET,1); // set run bit
  seuip_write_reg(SEUIP_REG_CTRL_CLR,1); // clear run bit
}

int seuip_wait_idle(u32 timeout)
/*
 * @param timeout maximal wait time in ms
 *
 * Wait until shift register went back to idle state.
 * Returns a value > 0 if not run into timeout (remaining time in ms)
 * Returns 0 if idle state not obtained
 */
{
  t_seuip_ctrl_reg ctrl;
  do{
    ms_delay(1);
    ctrl.reg = seuip_read_reg(SEUIP_REG_CTRL);
    timeout--;
  } while ((ctrl.bits.idle == 0) && (timeout > 0));
  return timeout;
}

int seuip_wait_data(u32 timeout)
/*
 * @param timeout maximal wait time in us
 *
 * Wait until data is available in fifos
 * Returns a value > 0 if not run into timeout (remaining time in ms)
 * Returns 0 if idle state not obtained
 */
{
  t_seuip_ctrl_reg ctrl;
  do{
    us_delay(1);
    ctrl.reg = seuip_read_reg(SEUIP_REG_CTRL);
    timeout--;
  } while (((ctrl.bits.simple_fifo_empty == 1) || (ctrl.bits.tmr_fifo_empty == 1)) && (timeout > 0));
  IF_DEBUG_PRINT_LV1(timeout == 0,"Wait data timeout occurred! %d",timeout);
  return timeout;
}


void seuip_shift(u32 data)
{
  u32 seudata;

	DEBUG_PRINT_LV1("Shifting %08x", data);
	seuip_write_reg(SEUIP_REG_DATAOUT , data);
	seuip_shift_once();

	// read 94*32 = 3008 bits from shift register as soon as they become available
	// send tmr data directly over serial port
  xil_printf("T");
	for(int i = 0; i < 93; i++ )
	{
    seuip_wait_data(10000);  // wait for data
    seudata = seuip_read_reg(SEUIP_REG_TMR_DATA);
    xil_printf("%08X",seudata); // send data as hex string (to prevent data from being interpreted as special char)
	}
	seudata = seuip_read_reg(SEUIP_REG_TMR_DATA);
  xil_printf("%06X",seudata>>8); // send last 3 bytes as hex string
  xil_printf("\r\n");
  // read and send simple data over serial port
  xil_printf("S");
	for(int i = 0; i < 93; i++ )
  {
    // read simple data
    seudata = seuip_read_reg(SEUIP_REG_SIMPLE_DATA);
    xil_printf("%08X",seudata); // send data as hex string (to prevent data from being interpreted as special char
	}
	seudata = seuip_read_reg(SEUIP_REG_SIMPLE_DATA);
  xil_printf("%06X",seudata>>8); // send last 3 bytes as hex string
	print("\r\n");
}

void seuip_read_seu_counters(void)
{
  u32 s_high, s_low, t_high, t_low;
  // read SEU counters
  s_high = seuip_read_reg(SEUIP_REG_SCNT_HIGH);
  s_low = seuip_read_reg(SEUIP_REG_SCNT_LOW);
  t_high = seuip_read_reg(SEUIP_REG_TCNT_HIGH);
  t_low = seuip_read_reg(SEUIP_REG_TCNT_LOW);
  // send SEU counter values over serial port
  xil_printf("C %04X %04X %04X %04X\r\n",s_high,s_low,t_high,t_low);
}
