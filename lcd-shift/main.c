/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-08 17:54]
 * Description   :
 **********************************************************************************/

#include <avr/io.h>
#include <avr/wdt.h>
#include <inttypes.h>
#include <util/delay.h>

#include "74hc164.h"

int main(void) {
  uint8_t i, bt;
  ShiftIC leds;

  createHC164(&leds, &DDRD, &PORTD, PORTD0, PORTD1, PORTD2);

  while(1) {
    bt = 0;

    for(i = 0; i <= 8; i++) {
      shiftOut(&leds, bt);
      _delay_ms(500);
      bt |= (1 << i);
    }

    for(i = 8; i > 0; i--) {
      bt ^= (1 << i);
      shiftOut(&leds, bt);
      _delay_ms(500);
    }
  }

  return 0;
}