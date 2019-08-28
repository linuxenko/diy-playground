#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include <avr/interrupt.h>

int main(void) {

  OCR1A = 8000;
  TCCR1B |= (1 << WGM12);

  TIMSK |= (1 << OCIE1A);

  TCCR1B |= (1 << CS12) | (1 << CS10);

  DDRD = (1 << DDD4);

  sei();

  wdt_enable(WDTO_2S);
  while(1) {
    wdt_reset();
  }

  return 0;
}

volatile unsigned char status = 0;
ISR(TIMER1_COMPA_vect) {
    status = !status;
    PORTD = (status << PORTD4);
}
