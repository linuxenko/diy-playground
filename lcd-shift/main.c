/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-08 21:27]
 * Description   :
 **********************************************************************************/

#include <avr/io.h>
#include <avr/wdt.h>
#include <inttypes.h>
#include <util/delay.h>

#include "74hc164.h"
#include "lcd-shift.h"

int main(void) {
  ShiftIC icS;
  ShiftLCD lcd;

  createHC164(&icS, &DDRD, &PORTD, PORTD0, PORTD1, PORTD2);
  createShiftLCD(&lcd, &icS, 4, 5, 0, 1, 2, 3, 16, 2, 0);

  shiftLCDPuts(&lcd, "hello world");
  _delay_ms(1000);

  while(1) {
    shiftLCDSetCursor(&lcd, 0,0);
    shiftLCDPuts(&lcd, "hello world");
    _delay_ms(1000);
    shiftLCDWrite(&lcd, 'a');
    _delay_ms(1000);
  }

  return 0;
}