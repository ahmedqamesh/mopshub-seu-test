#ifndef __LED_H_
#define __LED_H_

int init_leds(void);
void set_leds(char);
void led_off(char);
void led_on(char);
void write_leds(int);
u8 read_switches(void);

#endif
