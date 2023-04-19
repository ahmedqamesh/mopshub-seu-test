#include "xparameters.h"
#include "xgpio.h"


#define LED 0x01   /* Assumes bit 0 of GPIO is connected to an LED  */

#define LED_DEVICE_ID  XPAR_AXI_GPIO_1_DEVICE_ID

#define LED_CHANNEL 1
#define SWITCH_CHANNEL 2


#ifdef PRE_2_00A_APPLICATION


#define XGpio_SetDataDirection(InstancePtr, DirectionMask) \
        XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr) \
        XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask) \
        XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask) \
        XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif



XGpio Led_Gpio; /* The Instance of the GPIO Driver */

int init_leds(void)
{
	int Status = XGpio_Initialize(&Led_Gpio, LED_DEVICE_ID);
	XGpio_SetDataDirection(&Led_Gpio, LED_CHANNEL, 0);
	XGpio_SetDataDirection(&Led_Gpio, SWITCH_CHANNEL, 0xF);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

void led_on(char led)
{
	XGpio_DiscreteSet(&Led_Gpio, LED_CHANNEL, led);
}

void led_off(char led)
{
	XGpio_DiscreteClear(&Led_Gpio, LED_CHANNEL, led);
}

void write_leds(int state)
{
	XGpio_DiscreteWrite(&Led_Gpio, LED_CHANNEL, state);
}

void set_leds(int state)
{
	int temp = 0x01;
	for(int i = 0; i < 4; i++)
	{
		if(state & temp)
		{
			led_on(temp);
		}
		else
		{
			led_off(temp);
		}
		temp = temp << 1;
	}
}

u8 read_switches(void)
// read value from switches
{
  return (u8)XGpio_DiscreteRead(&Led_Gpio, SWITCH_CHANNEL);
}
