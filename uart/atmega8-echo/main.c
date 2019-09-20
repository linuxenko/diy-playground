/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-20 23:23]
 * Last Modified : [2019-09-21 00:10]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "uart.h"

#define _BAUD_RATE   9600

int main(void) {

  uart_init(UART_BAUD_SELECT(_BAUD_RATE, F_CPU));

  sei();

  while(1) {

    if (uart_available() > 0){
      uart_putc(uart_getc());
      uart_flush();
    }
  }

  return 0;
}