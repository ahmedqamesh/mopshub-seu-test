/*
 * tools.c
 *
 *  Created on: Jun 27, 2016
 *      Author: lehmann
 */

#include "xil_io.h"
#include "xil_types.h"
#include "xparameters.h"
#include "tools.h"


// timer function -----------------------------------------------------------------------

void us_delay(u32 us)
{
  u32 ld_value;
  u32 stat = 0;
  // limit max delay
  if (us > 42949672)
    us = 42949672;
  // calculate counter value: INTERVAL[us] = (ld_value + 2)*0.01[us]
  ld_value = us*100-2;
  // set counter value
  Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR+4,ld_value);
  Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR+0, 0x122);
  // start timer
  Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR+0, 0x182);
  while (stat == 0)
  {
    stat = Xil_In32(XPAR_AXI_TIMER_0_BASEADDR+0);
    stat &= 0x100; // check T0INT flag
  }
}

void ms_delay(u32 ms)
{
  u32 ld_value;
  u32 stat = 0;
  // limit max delay
  if (ms > 42949)
    ms = 42949;
  // calculate counter value: INTERVAL[us] = (ld_value + 2)*0.01[us]
  ld_value = ms*100000-2;
  // set counter value
  Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR+4,ld_value);
  Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR+0, 0x122);
  // start timer
  Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR+0, 0x182);
  while (stat == 0)
  {
    stat = Xil_In32(XPAR_AXI_TIMER_0_BASEADDR+0);
    stat &= 0x100; // check T0INT flag
  }
}

// helper function ----------------------------------------------------------------------
u8 twoasciitou8 (u8 ascii[2])
// convert hexadecimal 2-digit number to unsigned 8 bit value
// parameters
//    ascii   : hex number (00-FF)
// returns
//    converted value, 0 if invalid character
{
  u8 num;
  // 1st digit (16er)
  if ((ascii[0] >= '0') && (ascii[0] <= '9')) // digit
    num = ascii[0]-'0';
  else if ((ascii[0] >= 'a') && (ascii[0] <= 'f')) // letter
    num = ascii[0]-'a'+10;
  else if ((ascii[0] >= 'A') && (ascii[0] <= 'F')) // letter
    num = ascii[0]-'A'+10;
  else
    num = 0;
  num <<= 4; // multiply by 16
  // 2nd digit (1er)
  if ((ascii[1] >= '0') && (ascii[1] <= '9')) // digit
    num += ascii[1]-'0';
  else if ((ascii[1] >= 'a') && (ascii[1] <= 'f')) // letter
    num += ascii[1]-'a'+10;
  else if ((ascii[1] >= 'A') && (ascii[1] <= 'F')) // letter
    num += ascii[1]-'A'+10;
  return num;
}

u8 asciitou8 (u8 ascii)
// convert single hexadecimal number to unsigned 8 bit value
// parameters
//    ascii   : hex number (0-F)
// returns
//    converted value, 0 if invalid character
{
  if ((ascii >= '0') && (ascii <= '9')) // digit
    return ascii-'0';
  else if ((ascii >= 'a') && (ascii <= 'f')) // letter
    return ascii-'a'+10;
  else if ((ascii >= 'A') && (ascii <= 'F')) // letter
    return ascii-'A'+10;
  else
    return 0;
}

u8 u8toascii (u8 hex)
// convert number to hexadecimal character (single digit)
// parameters
//    hex   : number to convert (0-15)
// returns
//    ascii character with hex value, - if invalid input
{
  if (hex < 0xA)
    return hex+'0';
  else if (hex < 0x10)
    return hex+'A'-10;
  else
    return '-';
}

int asciitoint(char c)
{
	switch(c)
	{
	case '0':           return 0;
	case '1':           return 1;
	case '2':           return 2;
	case '3':           return 3;
	case '4':           return 4;
	case '5':           return 5;
	case '6':           return 6;
	case '7':           return 7;
	case '8':           return 8;
	case '9':           return 9;
	case 'a': case 'A': return 10;
	case 'b': case 'B': return 11;
	case 'c': case 'C': return 12;
	case 'd': case 'D': return 13;
	case 'e': case 'E': return 14;
	case 'f': case 'F': return 15;
	default: xil_printf("Illegal Hex-Char: %c",c); return -1;

	}
}

void uXtohex(u64 val, char* str, u8 digits)
// convert number to hexadecimal character string
// parameters
//    val     : number to convert
//    digits  : number of digits in output string
// returns
//    str     : string with converted number in hex format
{
  int i;
  for (i = digits-1; i >= 0; i--)
  {
    str[i] = u8toascii(val&0xF);
    val = val >> 4;
  }
  str[digits] = 0;
}

void u8tohex(u8 val, char* str)
// convert 8bit number (0-255) to hexadecimal character string (2 digits)
// parameters
//    val     : number to convert
// returns
//    str     : string with converted number in hex format
{
  uXtohex(val,str,2);
}

void u16tohex(u16 val, char* str)
// convert 16bit number to hexadecimal character string (4 digits)
// parameters
//    val     : number to convert
// returns
//    str     : string with converted number in hex format
{
  uXtohex(val,str,4);
}

void u20tohex(u32 val, char* str)
// convert 20bit number to hexadecimal character string (5 digits)
// parameters
//    val     : number to convert
// returns
//    str     : string with converted number in hex format
{
  uXtohex(val,str,5);
}

void u32tohex(u32 val, char* str)
// convert 32bit number to hexadecimal character string (8 digits)
// parameters
//    val     : number to convert
// returns
//    str     : string with converted number in hex format
{
  uXtohex(val,str,8);
}

void u64tohex(u64 val, char* str)
// convert 64bit number to hexadecimal character string (16 digits)
// parameters
//    val     : number to convert
// returns
//    str     : string with converted number in hex format
{
  uXtohex(val,str,16);
}

void u32todez(u32 val, char* str)
// convert 32bit number to decimal string
// parameters
//    val     : number to convert
// returns
//    str     : string with converted number in hex format
{
  char tmp[10];
  int i = 0;
  int j;
  do
  {
    tmp[i] = val%10;
    val = val/10;
    i++;
  }
  while (val > 0);
  for (j = i-1; j >= 0; j--)
  {
    str[j] = tmp[i-j-1]+'0';
  }
  str[i] = 0;
}

void print_newline(void)
{
  print("\r\n");
}
