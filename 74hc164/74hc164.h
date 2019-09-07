/*********************************************************************************
* File Name     : 74hc164.h
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-09-07 19:57]
* Last Modified : [2019-09-07 21:57]
* Description   : 74hc164 for avr-gcc
**********************************************************************************/

#ifndef _74HC164_H
#define _74HC164_H 1

void shiftOut(volatile uint8_t *dataPort, uint8_t dataPin, uint8_t clockPin, uint8_t val);

#endif
