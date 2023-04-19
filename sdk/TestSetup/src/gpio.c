/*
 * gpio.c
 *
 *  Created on: 30.06.2017
 *      Author: mrjay
 */

#include <stdio.h>
#include "xgpio.h"
#include "platform.h"
#include "xil_printf.h"

/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define GPIO_CHANNEL_1 1
#define GPIO_CHANNEL_2 2

#define GPIO_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID     //AXI_GPIO_0 name as in block design assigned

XGpio Gpio; //Define Gpio as XGpio Object
XGpio* GpioPtr;



int gpio_init(void){
	int Status;
	GpioPtr = &Gpio;

	Status = XGpio_Initialize(GpioPtr, GPIO_DEVICE_ID);
	if (Status != XST_SUCCESS) {
	    	return XST_FAILURE;
	    }
	Status = XGpio_SelfTest(GpioPtr);
	if (Status != XST_SUCCESS) {
	    	return XST_FAILURE;
	    }
	return XST_SUCCESS;
}

void gpio_clear_outputs(void)
{
  XGpio_DiscreteSet(GpioPtr,1,0);
}

void gpio_set_output(int port, int NewValue)
{
	int mask;
	mask = 1<<(port);
	switch(NewValue)
	{
		case 0 :
			XGpio_DiscreteClear(GpioPtr, GPIO_CHANNEL_1, mask);
			xil_printf("Port %i was set to 0\n",port);
			break;
		case 1 :
			XGpio_DiscreteSet(GpioPtr, GPIO_CHANNEL_1, mask);
			xil_printf("Port %i was set to 1\n",port);
			break;
		default	:print("Wrong Output set. Either 1 for high or 0 for low. Nothing was set.\n");
			break;
	}
}


int gpio_read_input()
{
	int outputstring;
	outputstring=XGpio_DiscreteRead(GpioPtr, GPIO_CHANNEL_2);
	return outputstring;
}

/* Discrete write sets the gpio outputs to 0 or 1. DiscreteClear to 0.
		 *DiscreteRead reads the IO ports. Output ports are always 0.
		 *			Input ports 0V=0,>1.5V=1, X=1
		 *DiscreteWrite and DiscreteClear
		 *have no effect on the output from DiscreteRead.
		 *XGpio_DiscreteWrite(&Gpio, FIRST_CHANNEL, LED)=XGpio_DiscreteClear(&Gpio, FIRST_CHANNEL, ~LED)
		 */
