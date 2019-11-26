/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-20 23:23]
 * Last Modified : [2019-11-26 02:03]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>

#include "adc.h"
#include "uart.h"

#define _BAUD_RATE   9600
#define _REFV 252

int main(void) {
  char out[64];
  unsigned long int vvr, vvd;

  uart_init(UART_BAUD_SELECT(_BAUD_RATE, F_CPU));

  sei();

  while(1) {

    vvd = adc_read(ADC_PRESCALER_128, ADC_VREF_AREF, 0);
    vvr = (_REFV * vvd) / 1000;

    sprintf(out, "adc0 = %lu %lu;\r\n", vvr, vvd);

    uart_puts(out);
    uart_flush();

    _delay_ms(1000);
  }

  return 0;
}
