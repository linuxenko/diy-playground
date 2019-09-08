/*********************************************************************************
 * File Name     : 74hc164.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 20:05]
 * Last Modified : [2019-09-08 22:02]
 * Description   : 74hc164 for avr-gcc
 **********************************************************************************/

#include <avr/io.h>
#include <util/delay.h>
#include <inttypes.h>

#include "74hc164.h"

ShiftIC * createHC164(ShiftIC *ic, volatile uint8_t *dirPort, volatile uint8_t *dataPort,
    uint8_t dataPin, uint8_t clockPin, uint8_t enablePin) {

  ic->dataPort = dataPort;
  ic->dataPin = dataPin;
  ic->clockPin = clockPin;
  ic->enablePin = enablePin;

  *dirPort |= (1 << ic->dataPin);
  *dirPort |= (1 << ic->clockPin);
  *dirPort |= (1 << ic->enablePin);

  *ic->dataPort &= ~(1 << ic->dataPin);
  *ic->dataPort &= ~(1 << ic->clockPin);
  *ic->dataPort &= ~(1 << ic->enablePin);

  return ic;
}

void _clock(ShiftIC *ic) {
   _delay_us(5);
  *ic->dataPort |= (1 << ic->clockPin);
   _delay_us(5);
  *ic->dataPort &= ~(1 << ic->clockPin);
}

void shiftReset(ShiftIC *ic) {
  *ic->dataPort &= ~(1 << ic->enablePin);
  _delay_us(5);
  *ic->dataPort |= (1 << ic->enablePin);
  _delay_us(5);
}

void shiftOut(ShiftIC *ic, uint8_t val) {
  uint8_t i;

  shiftReset(ic);

  for (i = 0; i < 8; i++)  {
    if (!!(val & (1 << (7 - i)))) {
      *ic->dataPort |= (1 << ic->dataPin);
    } else {
      *ic->dataPort &= ~(1 << ic->dataPin);
    }

    _clock(ic);
  }
}
