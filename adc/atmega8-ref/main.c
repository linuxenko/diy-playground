/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-20 23:23]
 * Last Modified : [2019-11-24 01:25]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include "uart.h"

#define _BAUD_RATE   9600


int main(void) {

  uart_init(UART_BAUD_SELECT(_BAUD_RATE, F_CPU));

  sei();

  while(1) {

      uart_puts("hello world\n");
      uart_flush();

    _delay_ms(5000);
  }

  return 0;
}