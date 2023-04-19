#include <stdio.h>
#include "xil_io.h"
#include "scb.h"
#include "tools.h"
//#include "color.h"
#include "led.h"

void master_writeReg(int reg, int data)
{
  Xil_Out32(I2C_0_BASE + ((reg) << 2), data);
}

int master_readReg(int reg)
{
  return Xil_In32(I2C_0_BASE + ((reg) << 2));
}

t_scbmaster_stat_reg master_waitfordone(void)
{
  u16 timeout = 0; // done has to be at 0 after at max 100 tries
  t_scbmaster_stat_reg stat;
  stat.reg = 0;

  // wait until master starts operating (done bit has to go to 0)
  stat.bits.done = 1;
  do
  {
    stat.reg = master_readReg(STATUS);
    timeout++;
  } while((stat.bits.done == 1) && (timeout < 100));
  // wait until master finished operating (done bit back to 1)
  do
  {
    stat.reg = master_readReg(STATUS);
  } while (stat.bits.done == 0);
  return stat;
}

int scb_line_init(void)
/*
 * Configure master to send line initialization command
 *  @param master : number of the SCB master (0-3)
 *  @return : Error if <0, else 0
 *
 */
{
  t_scbmaster_ctrl_reg ctrl;
  t_scbmaster_stat_reg stat;
  write_leds(0);
  //reset_color();
  //write_colord(master, TX_COLOR);

  stat.reg = 0;
  ctrl.bits.slave_address = 0x00;
  ctrl.bits.tx_number_bytes = 1;
  ctrl.bits.rx_number_bytes = 0;
  ctrl.bits.tx_start = 1;
  ctrl.bits.rx_start = 0;
  // register address to write
  master_writeReg(TX_BYTE0, 0);
  master_writeReg(CONTROL,ctrl.reg);

  stat = master_waitfordone();
  // check if correct amount of bytes were written and read
  if ((stat.bits.rx_bytes != ctrl.bits.rx_number_bytes) || (stat.bits.tx_bytes != ctrl.bits.tx_number_bytes))
  {
    DEBUG_PRINT_LV1("SCB Master: Line init error");
    //write_colord(NO_COLOR);
    return -1;
  }
  //write_colord(master, 'c');
  return 0;
}

int scb_find_pspps(u8 *pspps, u16* ids)
/*
 * Configure master to send line initialization command
 *  @return master : array with lists of masters for chips found
 *  @return pspps  : array with scb addresses of chips found
 *  @return : Error if <0, else number of chips found
 *
 */
{
  int p, m;
  int found = 0;
  for(m = 0; m < 4; m++)
  {
    for(p = 0; p < 16; p++)
    {
      t_scbmaster_ctrl_reg ctrl;
      t_scbmaster_stat_reg stat;
      write_leds(p);
      //reset_color();
      //write_colord(m, RX_COLOR);

      // configure m to read id from p
      stat.reg = 0;
      ctrl.bits.slave_address = 0x50+p;
      ctrl.bits.tx_number_bytes = 1;
      ctrl.bits.rx_number_bytes = 2;
      ctrl.bits.tx_start = 1;
      ctrl.bits.rx_start = 1;

      // register address to write
      master_writeReg(TX_BYTE0,0);
      master_writeReg(CONTROL,ctrl.reg);

      stat = master_waitfordone();

      u16 rx1 = master_readReg(RX_BYTE0);
      u16 rx2 = master_readReg(RX_BYTE0 + 1);

      if(!(stat.bits.rx_bytes < 2 || (rx1 == rx2 && rx1 == 4096)))
      {
        // move and put together ID into one 16bit variable. Remove HC on last 4 bits
        ids[found] = ((rx1&0x0FF0)<<4)+((rx2>>4)&0xFF);
        // save master and pspp address found
        pspps[found] = p;
        // count chips found
        found++;
      }
      //write_colord(m, 'c');
    }
  }
  if(!found)
  {
    print("SER: No chips detected"); print_newline();
  }
  return found;
}
