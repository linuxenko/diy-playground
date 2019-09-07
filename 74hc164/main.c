/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-07 22:21]
 * Description   :
 **********************************************************************************/

#include <avr/io.h>
#include <avr/wdt.h>
#include <inttypes.h>
#include <util/delay.h>

#include "74hc164.h"

#define DATA_PORT PORTD
#define DATA_PIN PORTD0
#define CLOCK_PIN PORTD1

int main(void) {
  uint8_t i, bt;


  DDRD |= (1 << DATA_PIN);
  DDRD |= (1 << CLOCK_PIN);

  while(1) {
    bt = 0;

    for(i = 0; i < 8; i++) {
      shiftOut(&DATA_PORT, DATA_PIN, CLOCK_PIN, bt);
      _delay_ms(40);
      bt |= (1 << i);
    }

    for(i = 8; i > 0; i--) {
      shiftOut(&DATA_PORT, DATA_PIN, CLOCK_PIN, bt);
      _delay_ms(40);
      bt ^= (1 << i);
    }
  }

  return 0;
}