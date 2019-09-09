/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 19:56]
 * Last Modified : [2019-09-09 16:31]
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
  icS.type = IC_TYPE_HC164;

  createShiftLCD(&lcd, &icS, 4, 5, 0, 1, 2, 3, 16, 2, 0);
  shiftLCDPuts(&lcd, "hello");

  while(1) {
  }

  return 0;
}