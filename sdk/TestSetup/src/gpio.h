/*
 * gpio.h
 *
 *  Created on: 30.06.2017
 *      Author: mrjay
 */

#ifndef SRC_GPIO_H_
#define SRC_GPIO_H_
#include "xgpio.h"

int gpio_init();
void gpio_clear_outputs(void);
void gpio_set_output(int port, int NewValue);
int gpio_read_input();


#endif /* SRC_GPIO_H_ */
