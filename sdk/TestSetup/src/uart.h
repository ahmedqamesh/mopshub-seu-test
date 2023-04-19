/*
 * uart.h
 *
 *  Created on: Jun 27, 2016
 *      Author: lehmann
 */

#ifndef UART_H_
#define UART_H_


int uart_init(void);
char uart_rx_byte();
char uart_rx_byte_nonblocking();
void uart_flush();
void uart_read_line(u8 *buffer, int buffer_size);
void uart_send_bytes(u8 *buffer, int buffer_size);
#endif /* UART_H_ */
