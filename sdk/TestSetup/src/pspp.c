/*
 * pspp.c
 *
 *  Created on: Jul 17, 2017
 *      Author: nlehmann
 */

#include "xil_types.h"
#include "xil_printf.h"
#include "scb.h"
//#include "color.h"
#include "led.h"
#include "tools.h"
#include "pspp.h"



int pspp_read_reg(u8 addr, u8 start_reg, u8 nb_reg, u8* data)
/*
 * Read registers from the PSPP chip
 *  @param addr : address of the PSPP chip (0-15)
 *  @param start_reg : address of the first register to read
 *  @param nb_reg : number of registers to read
 *  @return data: array with the received register values
 *  @return : Error if <0, else 0
 *
 */
{
  u16 i, err = 0;
  t_scbmaster_rx_data rx;
  t_scbmaster_ctrl_reg ctrl;
  t_scbmaster_stat_reg stat;
  write_leds(addr);
  //reset_color();
  //write_colord(master, RX_COLOR);

  stat.reg = 0;
  ctrl.bits.slave_address = 0x50+addr;
  ctrl.bits.tx_number_bytes = 1;
  ctrl.bits.rx_number_bytes = nb_reg;
  ctrl.bits.tx_start = 1;
  ctrl.bits.rx_start = 1;
  // register address to write
  master_writeReg(TX_BYTE0,start_reg);
  master_writeReg(CONTROL,ctrl.reg);

  stat = master_waitfordone();

  DEBUG_PRINT_LV2("SCB Chip: %d: Bytes sent: %d, Bytes received: %d",
                   addr,stat.bits.tx_bytes,stat.bits.rx_bytes);
  DEBUG_PRINT_LV2("Data: ");
  if ((stat.bits.rx_bytes != nb_reg) || (stat.bits.tx_bytes != 1))
  {
    DEBUG_PRINT_LV1("SCB Master: Chip %d communication error",
                  addr);
    //write_colord(master, NO_COLOR);
    return -1;
  }

  for (i = 0; i < stat.bits.rx_bytes; i++)
  {
    rx.data = master_readReg(RX_BYTE0+i);
    data[i] = rx.bits.data;
    DEBUG_PRINT_LV2(" %4X",rx.data);
    if (!rx.bits.valid)
      err = -1; // flag error if invalid hamming code detected
  }

  //write_colord(master, NO_COLOR);

  return err;
}

int pspp_write_reg(u8 addr, u8 start_reg, u8 nbw, u8 *w)
/*
 * Write and read registers from the PSPP chip in one SCB access
 *  @param addr : address of the PSPP chip (0-15)
 *  @param start_reg : address of the first register to read
 *  @param nbw : number of registers to write
 *  @return w: array with the values to write
 *  @return : Error if <0, else 0
 *
 */
{
  u16 i;
  t_scbmaster_ctrl_reg ctrl;
  t_scbmaster_stat_reg stat;
  write_leds(addr);
  //reset_color();
  //write_colord(master, TX_COLOR);

  stat.reg = 0;
  ctrl.bits.slave_address = 0x50+addr;
  ctrl.bits.tx_number_bytes = nbw+1;
  ctrl.bits.rx_number_bytes = 0;
  ctrl.bits.tx_start = 1;
  ctrl.bits.rx_start = 0;
  // register address to write
  master_writeReg(TX_BYTE0, start_reg);
  // write data in to TX registers
  for (i=0; i<nbw; i++)
    master_writeReg(TX_BYTE1+i,w[i]);
  // set control register
  master_writeReg(CONTROL,ctrl.reg);

  stat = master_waitfordone();

  DEBUG_PRINT_LV2("SCB Chip: %d: Bytes sent: %d, Bytes received: %d",
                   ,addr,stat.bits.tx_bytes,stat.bits.rx_bytes);
  // check if correct amount of bytes were written and read
  if ((stat.bits.rx_bytes != ctrl.bits.rx_number_bytes) || (stat.bits.tx_bytes != ctrl.bits.tx_number_bytes))
  {
    DEBUG_PRINT_LV1("SCB Master: Chip %d communication error ",
                  addr);
    //write_colord(master, NO_COLOR);
    return -1;
  }

  //write_colord(master, NO_COLOR);

  return 0;
}

int pspp_write_read_reg(u8 addr, u8 start_reg, u8 nbw, u8 nbr, u8 *w, u8 *r)
/*
 * Write and read registers from the PSPP chip in one SCB access
 *  @param addr : address of the PSPP chip (0-15)
 *  @param start_reg : address of the first register to read
 *  @param nbw : number of registers to write
 *  @param nbr : number of registers to read
 *  @return w: array with the values to write
 *  @return r: array with the received register values
 *  @return : Error if <0, else 10bit ADC value read
 *
 */
{
  u16 i, err = 0;
  t_scbmaster_rx_data rx;
  t_scbmaster_ctrl_reg ctrl;
  t_scbmaster_stat_reg stat;
  write_leds(addr);
  //reset_color();
  //write_colord(master, TRX_COLOR);

  stat.reg = 0;
  ctrl.bits.slave_address = 0x50+addr;
  ctrl.bits.tx_number_bytes = nbw+1;
  ctrl.bits.rx_number_bytes = nbr;
  ctrl.bits.tx_start = 1;
  ctrl.bits.rx_start = 1;
  // register address to write
  master_writeReg(TX_BYTE0,start_reg);
  // write data in to TX registers
  for (i=0; i<nbw; i++)
    master_writeReg(TX_BYTE1+i,w[i]);
  // set control register
  master_writeReg(CONTROL,ctrl.reg);

  stat = master_waitfordone();

  DEBUG_PRINT_LV2("SCB Chip: %d: Bytes sent: %d, Bytes received: %d",
                   addr,stat.bits.tx_bytes,stat.bits.rx_bytes);
  DEBUG_PRINT_LV2("Data: ");
  // check if correct amount of bytes were written and read
  if ((stat.bits.rx_bytes != ctrl.bits.rx_number_bytes) || (stat.bits.tx_bytes != ctrl.bits.tx_number_bytes))
  {
    DEBUG_PRINT_LV1("SCB Master: Chip %d communication error ",
                  addr);
    //write_colord(master, NO_COLOR);
    return -1;
  }

  // copy received bytes
  for (i = 0; i < stat.bits.rx_bytes; i++)
  {
    rx.data = master_readReg(RX_BYTE0+i);
    r[i] = rx.bits.data;
    DEBUG_PRINT_LV2(" %4X",rx.data);
    if (!rx.bits.valid)
      err = -1; // flag error if invalid hamming code detected
  }
  DEBUG_PRINT_LV2("");

  //write_colord(master, NO_COLOR);

  return err;
}

int pspp_read_adc(u8 addr, u8 adcch)
/*
 * Sets the ADC mux register and reads one value back
 *  @param master : number of the SCB master (0-3)
 *  @param addr : address of the PSPP chip (0-15)
 *  @param adcch : ADC channel to read (0-7)
 *  @return : Error if <0, else 10bit ADC value read
 *
 */
{
  u8 val[2] = {0,0};

  if ((addr&0xF0)||       // invalid PSPP address
      (adcch&0xF8))       // Invalid ADC channel, only channel 0-7 are valid
    return -1;

  // set mux to channel 0 for optimal ADC read conditions (bug in PSPPv3)
  //if (pspp_write_reg(addr,PSPP_REG_ADCMUX,1,val) < 0)
    //return -1;
  // configure mux and read response back
  if (pspp_write_read_reg(addr,PSPP_REG_ADCMUX,1,2,&adcch,val) < 0)
    return -1;

  // merge ADC value and return
  DEBUG_PRINT_LV2("ADC value read: %d ",(val[0]<<2)+val[1]);
  return (int)((val[0]<<2)+val[1]);
}
