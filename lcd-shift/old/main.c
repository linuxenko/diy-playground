/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-09 22:52]
 * Description   :
 **********************************************************************************/

#include <avr/io.h>
#include <avr/wdt.h>
#include <inttypes.h>
#include <util/delay.h>
#include <string.h>

#include "shiftout.h"
#include "lcdshift.h"

int main(void) {
  ShiftIC icS;
  ShiftLCD lcd;

  createShift(&icS, &DDRD, &PORTD, PORTD0, PORTD1, PORTD2);
  icS.type = IC_TYPE_HC595;

/*  createShiftLCD(&lcd, &icS, 4, 5, 0, 1, 2, 3, 16, 2, 0);*/
  createShiftLCD(&lcd, &icS, 1, 3, 4, 5, 6, 7, 16, 2, 0);
  shiftLCDPuts(&lcd, "hello world");

/*  while(1) {*/
/*    shiftLCDSetCursor(&lcd, 0,0);*/
/*    shiftLCDPuts(&lcd, "hello");*/
/*    _delay_ms(1000);*/
/*  }*/

  return 0;
}