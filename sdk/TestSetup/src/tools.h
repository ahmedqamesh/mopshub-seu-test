/*
 * tools.h
 *
 *  Created on: Jun 27, 2016
 *      Author: lehmann
 */

#ifndef TOOLS_H_
#define TOOLS_H_

#define VERSION "seu test v19.02.08"

// debug output
#define DEBUG 0

#ifdef DEBUG
#if DEBUG==3
#define DEBUG_PRINT_LV1(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )
#define DEBUG_PRINT_LV2(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )
#define DEBUG_PRINT_LV3(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )
#endif
#if DEBUG==2
#define DEBUG_PRINT_LV1(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )
#define DEBUG_PRINT_LV2(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )
#define DEBUG_PRINT_LV3(str, ...) do{ } while ( 0 )
#endif
#if DEBUG==1
#define DEBUG_PRINT_LV1(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )
#define DEBUG_PRINT_LV2(str, ...) do{ } while ( 0 )
#define DEBUG_PRINT_LV3(str, ...) do{ } while ( 0 )
#define IF_DEBUG_PRINT_LV1(cond, str, ...) do{ if (cond){xil_printf("#" str "\r\n", ##__VA_ARGS__ ); }} while( 0 )
#define IF_DEBUG_PRINT_LV2(cond, str, ...) do{ } while( 0 )
#define IF_DEBUG_PRINT_LV3(cond, str, ...) do{ } while( 0 )
#endif
#if DEBUG==0
#define DEBUG_PRINT_LV1(str, ...) do{ } while ( 0 )
#define DEBUG_PRINT_LV2(str, ...) do{ } while ( 0 )
#define DEBUG_PRINT_LV3(str, ...) do{ } while ( 0 )
#define IF_DEBUG_PRINT_LV1(cond, str, ...) do{ } while( 0 )
#define IF_DEBUG_PRINT_LV2(cond, str, ...) do{ } while( 0 )
#define IF_DEBUG_PRINT_LV3(cond, str, ...) do{ } while( 0 )
#endif
#endif
#define ERROR_PRINT(str, ...) do{ xil_printf("#" str "\r\n", ##__VA_ARGS__ ); } while( 0 )

// type definitions ---------------------------------------------------------------------
typedef union
{
  u8 bytes[4];
  u16 shorts[2];
  u32 word;
} bytes_2_word;

// helper functions ---------------------------------------------------------------------

void us_delay(u32 us);
void ms_delay(u32 ms);
u8 twoasciitou8 (u8 ascii[2]);
u8 asciitou8 (u8 ascii);
u8 u8toascii (u8 hex);
void uXtohex(u64 val, char* str, u8 digits);
void u8tohex(u8 val, char* str);
void u16tohex(u16 val, char* str);
void u20tohex(u32 val, char* str);
void u32tohex(u32 val, char* str);
void u64tohex(u64 val, char* str);
void u32todez(u32 val, char* str);
void print_newline(void);
int asciitoint(char);
#endif /* TOOLS_H_ */
