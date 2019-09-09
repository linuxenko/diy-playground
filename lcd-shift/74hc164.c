/*********************************************************************************
 * File Name     : 74hc164.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-07 20:05]
 * Last Modified : [2019-09-09 12:52]
 * Description   : 74hc164 for avr-gcc
 **********************************************************************************/

#include <avr/io.h>
#include <inttypes.h>
#include <util/delay.h>

#include "74hc164.h"

ShiftIC * createHC164(ShiftIC *ic, volatile uint8_t *dirPort, volatile uint8_t *dataPort,
    uint8_t dataPin, uint8_t clockPin, uint8_t enablePin) {

  ic->dataPort = dataPort;
  ic->dataPin = dataPin;
  ic->clockPin = clockPin;
  ic->enablePin = enablePin;

  *dirPort |= (1 << ic->dataPin) | (1 << ic->clockPin) | (1 << ic->enablePin);

  *ic->dataPort &= ~(1 << ic->dataPin);
  *ic->dataPort &= ~(1 << ic->clockPin);
  *ic->dataPort &= ~(1 << ic->enablePin);

  return ic;
}

void _clock(ShiftIC *ic) {
  _delay_us(1);
  *ic->dataPort |= (1 << ic->clockPin);
  _delay_us(1);
  *ic->dataPort &= ~(1 << ic->clockPin);
  _delay_us(1);
}

void shiftOff(ShiftIC *ic) {
  *ic->dataPort &= ~(1 << ic->enablePin);
  _delay_us(1);
}

void shiftOn(ShiftIC *ic) {
  *ic->dataPort |= (1 << ic->enablePin);
  _delay_us(1);
}

void shiftReset(ShiftIC *ic) {
  shiftOff(ic);
  shiftOn(ic);
}

void shiftOut(ShiftIC *ic, uint8_t val) {
/* The original shiftOut from arduino's source code*/
/*    if (bitOrder == LSBFIRST)*/
/*      digitalWrite(dataPin, !!(val & (1 << i)));*/
/*  else */
/*      digitalWrite(dataPin, !!(val & (1 << (7 - i))));*/

  uint8_t i;

  for (i = 0; i < 8; i++)  {
    *ic->dataPort &= ~(1 << ic->dataPin);

    if (!!(val & (1 << (7 - i)))) {
      *ic->dataPort |= (1 << ic->dataPin);
    }

    _clock(ic);
  }
}
