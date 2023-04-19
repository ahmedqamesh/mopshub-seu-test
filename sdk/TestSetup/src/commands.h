#ifndef COMMANDS_H_
#define COMMANDS_H_

#include "xil_types.h"

void read_registers();
void read_data(u8);
void write_data(u8, u8, u8);
void write_register();
void list_chips();

void cmd_adc(u8* Buffer);
void cmd_dac(u8* Buffer);
void cmd_gpio(u8* Buffer);
void cmd_scb(u8* Buffer);
void cmd_reset(u8* Buffer);
void cmd_shift(u8* Buffer);
void cmd_select(u8* Buffer);

#endif
