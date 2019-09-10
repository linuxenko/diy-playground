/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-10 18:09]
 * Last Modified : [2019-09-10 18:34]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  DDRB |= (1 << PB3);

  while (1) {
    PORTB |= (1 << PB3);

    _delay_ms(1000);

    PORTB &= ~(1 << PB3);
    _delay_ms(1000);
  }
}