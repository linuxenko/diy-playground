/*********************************************************************************
* File Name     : 74hc164.h
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-09-07 19:57]
* Last Modified : [2019-09-08 22:02]
* Description   : 74hc164 for avr-gcc
**********************************************************************************/

#ifndef _74HC164_H
#define _74HC164_H 1

typedef struct _shift_ic {
  volatile uint8_t *dataPort;
  uint8_t dataPin;
  uint8_t clockPin;
  uint8_t enablePin;
} ShiftIC;

/* A very small helper for individual IC configuration, the only problem - they
 * have to share the same range of ports.
 */
ShiftIC * createHC164(ShiftIC *ic, volatile uint8_t *dirPort, volatile uint8_t *dataPort,
    uint8_t dataPin, uint8_t clockPin, uint8_t enablePin);

void shiftOut(ShiftIC *ic, uint8_t val);

#endif
