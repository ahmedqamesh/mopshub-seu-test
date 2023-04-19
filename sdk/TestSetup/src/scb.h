#ifndef __SCB_H_
#define __SCB_H_

#define I2C_0_BASE XPAR_SCB_TESTMASTER_0_BASEADDR
#define I2C_0_HIGH XPAR_SCB_TESTMASTER_0_HIGHADDR

// IP registers
#define CONTROL     0
#define STATUS      1
#define TX_BYTE0    2
#define TX_BYTE1    3
#define TX_BYTE2    4
#define TX_BYTE3    5
#define TX_BYTE4    6
#define TX_BYTE5    7
#define TX_BYTE6    8
#define TX_BYTE7    9
#define TX_BYTE8    10
#define TX_BYTE9    11
#define TX_BYTE10   12
#define TX_BYTE11   13
#define TX_BYTE12   14
#define TX_BYTE13   15
#define TX_BYTE14   16
#define TX_BYTE15   17
#define RX_BYTE0    18
#define RX_BYTE1    19
#define RX_BYTE2    20
#define RX_BYTE3    21
#define RX_BYTE4    22
#define RX_BYTE5    23
#define RX_BYTE6    24
#define RX_BYTE7    25
#define RX_BYTE8    26
#define RX_BYTE9    27
#define RX_BYTE10   28
#define RX_BYTE11   29
#define RX_BYTE12   30
#define RX_BYTE13   31
#define RX_BYTE14   32
#define RX_BYTE15   33

typedef union
{
  struct {
    unsigned tx_start : 1;
    unsigned rx_start : 1;
    unsigned unused : 3;
    unsigned slave_address : 7;
    unsigned tx_number_bytes : 4;
    unsigned rx_number_bytes : 4;
    unsigned unused1 : 12;
  } bits;
  u32 reg;
} t_scbmaster_ctrl_reg;

typedef union
{
  struct {
    unsigned done : 1;
    unsigned unused : 3;
    unsigned tx_bytes : 4;
    unsigned rx_bytes : 4;
    unsigned unused1 : 20;
  } bits;
  u32 reg;
} t_scbmaster_stat_reg;

typedef union
{
  struct {
    unsigned hc_bits : 4;
    unsigned data : 8;
    unsigned valid : 1;
    unsigned unused : 3;
  } bits;
  u16 data;
} t_scbmaster_rx_data;


void master_writeReg(int reg, int data);
int master_readReg(int reg);
t_scbmaster_stat_reg master_waitfordone(void);
int scb_line_init(void);
int scb_find_pspps(u8 *pspps, u16* ids);

#endif
