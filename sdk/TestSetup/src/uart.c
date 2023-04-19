/*
 * uart.c
 *
 *  Created on: Jun 27, 2016
 *      Author: lehmann
 *
 * based on the xuartlite_polled_example.c from
 * https://github.com/Xilinx/embeddedsw/blob/master/XilinxProcessorIPLib/drivers/uartlite/examples/xuartlite_polled_example.c
******************************************************************************
*
* Copyright (C) 2002 - 2015 Xilinx, Inc.  All rights reserved.
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

#include "xuartlite.h"
#include "xparameters.h"
#include "xuartlite_l.h"
#include "xuartlite.h"

#include "tools.h"

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define UARTLITE_DEVICE_ID  XPAR_UARTLITE_0_DEVICE_ID
#define UARTLITE_BASE_ADDR XPAR_AXI_UARTLITE_0_BASEADDR

/*
 * The following constant controls the length of the buffers to be sent
 * and received with the UartLite, this constant must be 16 bytes or less since
 * this is a single threaded non-interrupt driven example such that the
 * entire buffer will fit into the transmit and receive FIFOs of the UartLite.
 */
#define TEST_BUFFER_SIZE 16

XUartLite UartLite;   /* Instance of the UartLite Device */

/*
 * The following buffers are used in this example to send and receive data
 * with the UartLite.
 */
u8 uart_SendBuffer[TEST_BUFFER_SIZE];  /* Buffer for Transmitting Data */
u8 uart_RecvBuffer[TEST_BUFFER_SIZE];  /* Buffer for Receiving Data */


/************************** Function Definitions *****************************/
int uart_init(void)
{
  int Status;
  /*
   * Initialize the UartLite driver so that it is ready to use.
   */
  Status = XUartLite_Initialize(&UartLite, UARTLITE_DEVICE_ID);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  /*
   * Perform a self-test to ensure that the hardware was built correctly.
   */
  Status = XUartLite_SelfTest(&UartLite);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
  return XST_SUCCESS;
}

char uart_rx_byte_nonblocking()
{
  char c; // = XUartLite_RecvByte(UARTLITE_BASE_ADDR); // use variable for debug purposes
  if (!XUartLite_IsReceiveEmpty(UARTLITE_BASE_ADDR))
    c = (u8)XUartLite_ReadReg(UARTLITE_BASE_ADDR, XUL_RX_FIFO_OFFSET);
  else
    c = 0;
  return c;
}

char uart_rx_byte()
{
	char c = XUartLite_RecvByte(UARTLITE_BASE_ADDR); // use variable for debug purposes
	return c;
}

void uart_read_line(u8 *buffer, int buffer_size)
{
  int NewLine = 0;
  int i;

  for (i=0; (i<buffer_size) & ~NewLine ; i++ )
  {
    buffer[i] = XUartLite_RecvByte(UARTLITE_BASE_ADDR);
    if ( (buffer[i] == '\n') || (buffer[i] == '\r') )
    {
      buffer[i] = 0;
      NewLine = 1;
    }
  }
  DEBUG_PRINT_LV1("BytesRead: %i, Buffer: %s",i ,buffer);
}

void uart_send_bytes(u8 *buffer, int num_bytes)
{
  for (int i = 0; i < num_bytes; i++)
    XUartLite_SendByte(UARTLITE_BASE_ADDR, buffer[i]);
}


void uart_flush()
{
  while(!XUartLite_IsReceiveEmpty(UARTLITE_BASE_ADDR))
    XUartLite_RecvByte(UARTLITE_BASE_ADDR);
}
