/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-08 22:08]
 * Description   :
 **********************************************************************************/

#include <avr/io.h>
#include <avr/wdt.h>
#include <inttypes.h>
#include <util/delay.h>

#include "74hc164.h"

int main(void) {
   uint8_t bt = 0;
   char i;

  ShiftIC ic;
  createHC164(&ic, &DDRD, &PORTD, PORTD0, PORTD1, PORTD2);

  while(1) {
    for(i = 0; i <= 7; i++) {
      bt |= (1 << i);
      shiftOut(&ic, bt);
      _delay_ms(400);
    }

    for(i = 8; i >= 0; i--) {
      bt &= ~(1 << i);
      shiftOut(&ic, bt);
      _delay_ms(400);
    }
  }

  return 0;
}