/*********************************************************************************
* File Name     : lcd-shift.h
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-09-08 16:51]
* Last Modified : [2019-09-09 13:13]
* Description   :  
**********************************************************************************/

#ifndef _LCD_SHIFT_H
#define _LCD_SHIFT_H

#define LCD_CLEARDISPLAY 0x01
#define LCD_RETURNHOME 0x02
#define LCD_ENTRYMODESET 0x04
#define LCD_DISPLAYCONTROL 0x08
#define LCD_CURSORSHIFT 0x10
#define LCD_FUNCTIONSET 0x20
#define LCD_SETCGRAMADDR 0x40
#define LCD_SETDDRAMADDR 0x80
#define LCD_ENTRYRIGHT 0x00
#define LCD_ENTRYLEFT 0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00
#define LCD_DISPLAYON 0x04
#define LCD_DISPLAYOFF 0x00
#define LCD_CURSORON 0x02
#define LCD_CURSOROFF 0x00
#define LCD_BLINKON 0x01
#define LCD_BLINKOFF 0x00
#define LCD_DISPLAYMOVE 0x08
#define LCD_CURSORMOVE 0x00
#define LCD_MOVERIGHT 0x04
#define LCD_MOVELEFT 0x00
#define LCD_8BITMODE 0x10
#define LCD_4BITMODE 0x00
#define LCD_2LINE 0x08
#define LCD_1LINE 0x00
#define LCD_5x10DOTS 0x04
#define LCD_5x8DOTS 0x00


#include "74hc164.h"

typedef struct _lcd_def {
  ShiftIC *ic;

  uint8_t rs;
  uint8_t e;
  uint8_t d0;
  uint8_t d1;
  uint8_t d2;
  uint8_t d3;

  uint8_t cols;
  uint8_t rows;
  uint8_t displayControl;
  uint8_t displayMode;
  uint8_t reg;

} ShiftLCD;

ShiftLCD * createShiftLCD(ShiftLCD *lcd, ShiftIC *ic, uint8_t rs, uint8_t e,
    uint8_t d0, uint8_t d1, uint8_t d2, uint8_t d3,
    uint8_t cols, uint8_t rows, uint8_t charsize);

void shiftLCDSetCursor(ShiftLCD *lcd, uint8_t col, uint8_t row);
void shiftLCDPuts(ShiftLCD *lcd, char *string);
#endif
