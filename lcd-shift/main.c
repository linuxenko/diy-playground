/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-09 14:48]
 * Description   :
 **********************************************************************************/

#include <avr/io.h>
#include <avr/wdt.h>
#include <inttypes.h>
#include <util/delay.h>
#include <stdlib.h>

#include "74hc164.h"
#include "lcd-shift.h"

int main(void) {
  unsigned long i = 0;
  char text[16];

  ShiftIC icS;
  ShiftLCD lcd;

  createHC164(&icS, &DDRD, &PORTD, PORTD0, PORTD1, PORTD2);
  createShiftLCD(&lcd, &icS, 4, 5, 0, 1, 2, 3, 16, 2, 0);

  shiftLCDPuts(&lcd, "hello");

  while(1) {
    shiftLCDSetCursor(&lcd, 0, 1);
    sprintf(text, "%d", i);
    shiftLCDPuts(&lcd, text);
    _delay_ms(1000);
    i++;
  }

  return 0;
}