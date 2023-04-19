/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * Test Setup for PATT initial test
 *
 * Based on program by J. Schick and Y. Narbutt
 * updated by N. Lehmann
 *
 * Bergische Univerisät Wuppertal
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"

#include "xil_printf.h"
#include "xspi.h"
#include "xspi_l.h"
#include "xuartlite_l.h"

#include "spi.h" // ADC/DAC functions
#include "gpio.h" //GPIO functions
#include "scb.h" //SCB Functions
#include "commands.h" 	// interface to computer
#include "uart.h" // serial communication
#include "tools.h"		// helper functions
#include "led.h"		// access to LED and switches
#include "seuip.h"

// size of buffer for serial commands
#define BufferSize 64

// Main function
int main()
{
	u8 Buffer[BufferSize];

  // initialize system
  init_platform();
	// initialize LED and Switches gpio unit
	if (init_leds() != XST_SUCCESS)
	{
		ERROR_PRINT("Failed to initialize SPI Module");
		return XST_FAILURE;
	}
	// initialize SPI
	if (InitSpi() != XST_SUCCESS)
  {
    ERROR_PRINT("Failed to initialize SPI Module");
    return XST_FAILURE;
  }
  // reset all dac channels to 0
  DAC_ResetAll();
  // init I/Os
	if (gpio_init() != XST_SUCCESS)
	{
    ERROR_PRINT("Failed to initialize GPIO Module");
    return XST_FAILURE;
  }
  // reset all outputs to 0
  gpio_clear_outputs();

  seuip_set_freq(200000);

  DEBUG_PRINT_LV1("Rock'n'roll");
	write_leds(0x9);

  // empty uart buffer
  uart_flush();
  for (int i=0; i<BufferSize; i++)
  {
    Buffer[i] = 0;
  }

  // main loop
	while (1)
  {
    print("Ready\r\n");
		// read a line from serial port
    uart_read_line(Buffer,BufferSize);
		// select and execute command received
    cmd_select(Buffer);
		// loop delay
    ms_delay(1);
  }

  return 0;
}

