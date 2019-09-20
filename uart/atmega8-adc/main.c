/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-20 23:23]
 * Last Modified : [2019-09-21 01:31]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include "uart.h"

#define _BAUD_RATE   9600

void adc_init() {
ADMUX=(1<<REFS0);                         // For Aref=AVcc;
ADCSRA=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0); //Rrescalar div factor =128
}

uint16_t ReadADC(uint8_t ch) {
   //Select ADC Channel ch must be 0-7
   ch=ch&0b00000111;
   ADMUX|=ch;

   //Start Single conversion
   ADCSRA|=(1<<ADSC);

   //Wait for conversion to complete
   while(!(ADCSRA & (1<<ADIF)));

   //Clear ADIF by writing one to it
   //Note you may be wondering why we have write one to clear it
   //This is standard way of clearing bits in io as said in datasheets.
   //The code writes '1' but it result in setting bit to '0' !!!

   ADCSRA|=(1<<ADIF);

   return(ADC);
}

int main(void) {
  uint16_t adc_result;
  char out[64];

  adc_init();
  uart_init(UART_BAUD_SELECT(_BAUD_RATE, F_CPU));

  sei();

  while(1) {

      adc_result = ReadADC(0);
      sprintf(out, "adc0 = %d\r\n", adc_result);
      uart_puts(out);
      uart_flush();

    _delay_ms(1000);
  }

  return 0;
}