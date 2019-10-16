# --
# Copyright (c) 2017, Lukasz Marcin Podkalicki <lukasz@podkalicki.com>
# --

MCU=atmega8
FUSE_L=0xc4
FUSE_H=0x99
F_CPU=800000
CC=avr-gcc
LD=avr-ld
OBJCOPY=avr-objcopy
SIZE=avr-size
AVRDUDE=avrdude
CFLAGS=-std=c99 -Wall -g -flto -Os -mmcu=${MCU} -DF_CPU=${F_CPU} -I. -I.. -DUART_RX_ENABLED -DUART_TX_ENABLED -DUART_BAUDRATE=19200
TARGET=main

SRCS=main.c

all:
	${CC} ${CFLAGS} -o ${TARGET}.o ${SRCS}
	${LD} -o ${TARGET}.elf ${TARGET}.o
	${OBJCOPY} -j .text -j .data -O ihex ${TARGET}.o ${TARGET}.hex
	${SIZE} -C --mcu=${MCU} ${TARGET}.elf

flash:
	${AVRDUDE} -p ${MCU} -c usbasp -U flash:w:${TARGET}.hex:i -F -P usb -p m8 -B64

fuse:
	$(AVRDUDE) -p ${MCU} -c usbasp -U hfuse:w:${FUSE_H}:m -U lfuse:w:${FUSE_L}:m

clean:
	rm -f *.c~ *.o *.elf *.hex