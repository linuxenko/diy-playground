/*********************************************************************************
* File Name     : lcd-shift.c
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-09-08 18:28]
* Last Modified : [2019-09-08 21:27]
* Description   :  
**********************************************************************************/

#include <inttypes.h>
#include <util/delay.h>

#include "74hc164.h"
#include "lcd-shift.h"

void write4bits(ShiftLCD *lcd, uint8_t value);
void transfer();
void pulseEnable(ShiftLCD *lcd);
void command(ShiftLCD *lcd, uint8_t value);
void send(ShiftLCD *lcd, uint8_t value, uint8_t mode);

void bitWrite(uint8_t value, uint8_t bit, uint8_t bitValue) {
  if (bitValue == 0) {
    value &= ~(1 << bit);
  } else {
    value |= (1 << bit);
  }
}

void clear(ShiftLCD *lcd) {
    command(lcd, LCD_CLEARDISPLAY);
    _delay_ms(2);
}

void send(ShiftLCD *lcd, uint8_t value, uint8_t mode) {
    bitWrite(lcd->reg, lcd->rs, mode);
    transfer(lcd);
    write4bits(lcd, value >> 4);
    write4bits(lcd, value);
}

void command(ShiftLCD *lcd, uint8_t value) {
  send(lcd, value, 0);
}


void pulseEnable(ShiftLCD *lcd) {
    bitWrite(lcd->reg, lcd->e, 0);
    transfer(lcd);
    _delay_ms(0.1);
    bitWrite(lcd->reg, lcd->e, 1);
    transfer(lcd);
    _delay_ms(0.1);
    bitWrite(lcd->reg, lcd->e, 0);
    transfer(lcd);
    _delay_ms(0.5);
}

void write4bits(ShiftLCD *lcd, uint8_t value) {
    bitWrite(lcd->reg, lcd->d0, (value >> 0) & 1);
    bitWrite(lcd->reg, lcd->d1, (value >> 1) & 1);
    bitWrite(lcd->reg, lcd->d2, (value >> 2) & 1);
    bitWrite(lcd->reg, lcd->d3, (value >> 3) & 1);
    transfer(lcd);
    pulseEnable(lcd);
}

void shiftLCDWrite(ShiftLCD *lcd, uint8_t value) {
  send(lcd, value, 0);
}

void shiftLCDPuts(ShiftLCD *lcd, char *string) {
  char *it = string;

  for (; *it; it++) {
    shiftLCDWrite(lcd, *it);
  }
}

void shiftLCDSetCursor(ShiftLCD *lcd, uint8_t col, uint8_t row) {
    uint8_t row_offsets[] = {0x00,
      0x40,
      (uint8_t)(0x00 + lcd->cols),
      (uint8_t)(0x40 + lcd->cols)
    };

    if (row > lcd->rows) {
        row = lcd->rows - 1;
    }

    command(lcd, LCD_SETDDRAMADDR | (col + row_offsets[row]));
}

ShiftLCD * createShiftLCD(ShiftLCD *lcd, ShiftIC *ic, uint8_t rs, uint8_t e,
    uint8_t d0, uint8_t d1, uint8_t d2, uint8_t d3,
    uint8_t cols, uint8_t rows, uint8_t charsize) {

  lcd->ic = ic;
  lcd->rs = rs;
  lcd->e = e;
  lcd->d0 = d0;
  lcd->d1 = d1;
  lcd->d2 = d2;
  lcd->d3 = d3;

  lcd->cols = cols;
  lcd->rows = rows;
  lcd->displayControl = LCD_DISPLAYON | LCD_CURSORON | LCD_BLINKON;
  lcd->displayMode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;

  _delay_ms(15);
  write4bits(lcd, 0x03);
  _delay_ms(4.5);
  write4bits(lcd, 0x03);
  _delay_ms(4.5);
  write4bits(lcd, 0x03);
  _delay_ms(4.5);
  write4bits(lcd, 0x02);

  if (rows > 1) {
    command(lcd, LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
  } else if (rows == 1 && charsize != 0) {
    command(lcd, LCD_FUNCTIONSET | LCD_4BITMODE | LCD_1LINE | LCD_5x10DOTS);
  } else {
    command(lcd, LCD_FUNCTIONSET | LCD_4BITMODE | LCD_1LINE | LCD_5x8DOTS);
  }

  command(lcd, LCD_DISPLAYCONTROL | lcd->displayControl);
  clear(lcd);
  command(lcd, LCD_ENTRYMODESET | lcd->displayMode);

  clear(lcd);
  return lcd;
}

void transfer(ShiftLCD *lcd) {
  shiftLock(lcd->ic);
  shiftOut(lcd->ic, lcd->reg);
  shiftUnlock(lcd->ic);
}
