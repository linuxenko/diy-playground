/*********************************************************************************
 * File Name     : 74hc164.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 20:05]
 * Last Modified : [2019-09-07 22:22]
 * Description   : 74hc164 for avr-gcc
 **********************************************************************************/

#include <avr/io.h>
#include <inttypes.h>

#include "74hc164.h"

void _clock(volatile uint8_t *dataPort, uint8_t clockPin) {
  *dataPort |= (1 << clockPin);
  *dataPort &= ~(1 << clockPin);
}

void shiftOut(volatile uint8_t *dataPort, uint8_t dataPin, uint8_t clockPin, uint8_t val) {
  uint8_t i, sval;

  for (i = 0; i < 8; i++)  {
    if (!!(val & (1 << (7 - i)))) {
      *dataPort |= (1 << dataPin);
    } else {
      *dataPort &= ~(1 << dataPin);
    }

    _clock(dataPort, clockPin);
  }
}
