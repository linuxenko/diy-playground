/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-09 13:43]
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
/**/

/*  shiftLCDSetCursor(&lcd, 0, 1);*/
/*  _delay_ms(2000);*/
  shiftLCDPuts(&lcd, "hello");
  _delay_ms(1000);

  while(1) {
/*    shiftLCDPuts(&lcd, "hello");*/
/*    _delay_ms(5000);*/

/*    shiftOut(&icS, 0b00001111);*/
/*    _delay_ms(1000);*/
/*    shiftOut(&icS, 0b11110000);*/
/*    _delay_ms(1000);*/
/*    shiftOut(&icS, 0b00011000);*/
/*    _delay_ms(1000);*/

/*    shiftLCDWrite(&lcd, 'a');*/
/*    _delay_ms(1000);*/
/*    shiftLCDPuts(&lcd, "hello");*/
/*    _delay_ms(1000);*/
/*    _delay_ms(1000);*/
/*    shiftOut(&icS, 0b11110000);*/
/*    _delay_ms(1000);*/
/*    shiftOut(&icS, 0b10000000);*/
/*    _delay_ms(1000);*/
/*    shiftOut(&icS, 0b00000001);*/
/*    _delay_ms(1000);*/
  }

  return 0;
}