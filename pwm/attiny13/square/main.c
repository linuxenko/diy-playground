/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-10 18:09]
 * Last Modified : [2019-10-03 00:12]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  DDRB |= (1 << PB3);

  /*
   * 1Khz square wave generator
   * I have to mention it is not that accurate on internal crystal
   */
  while (1) {
    PORTB |= (1 << PB3);

    _delay_us(500);

    PORTB &= ~(1 << PB3);
    _delay_us(500);
  }
}