/*********************************************************************************
* File Name     : main.c
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-10-06 14:29]
* Last Modified : [2020-02-05 23:22]
* Description   :  
**********************************************************************************/

#include <avr/io.h>
#include <util/delay.h>
#include "shiftout.h"
#include "lcdshift.h"

int main(void) {
  /* Our shift ic */
  ShiftIC icS;

  /* LCD object */
  ShiftLCD lcd;

  createShift(&icS, &DDRD, &PORTD, PORTD0, PORTD1, PORTD2);

  /* Type of driver must be specified explicitly */
  icS.type = IC_TYPE_HC164;

  /* Lets create it */
/*  createShiftLCD(&lcd, &icS, 1, 3, 4, 5, 6, 7, 16, 2, 0);*/
  createShiftLCD(&lcd, &icS, 4, 5, 0, 1, 2, 3, 8, 2, 0);

  /* Ta-da ! */
  shiftLCDPuts(&lcd, "hello");

/*  while(1) {*/
/**/
/*    shiftLCDClear(&lcd);*/
/*    shiftLCDPuts(&lcd, "hello");*/
/*    _delay_ms(1000);*/
/*  }*/

  return 0;
}