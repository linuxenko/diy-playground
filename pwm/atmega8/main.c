#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include <string.h>
#include <avr/pgmspace.h>

const uint8_t SINE[5] = {
  10,500,1000,500,10
};

uint8_t sindex;

ISR(TIMER0_OVF_vect) {
  if (sindex > 5) {
    sindex = 0;
  }

  OCR1A = SINE[sindex];

  sindex++;
}

int main(void) {
  DDRB = (1 << DDB1);

  /*
   * clear OC1A on compare match
   * set OC1A at BOTTOM, non-inverting mode
   * Fast PWM, 8bit
   */
  TCCR1A = _BV(COM1A1) | _BV(WGM10);

  /*
   * Fast PWM, 8bit
   * Prescaler: clk/1 = 8MHz
   * PWM frequency = 8MHz / (255 + 1) = 31.25kHz
   */
  /*  TCCR1B = _BV(WGM12) | _BV(CS10);*/
  TCCR1B = _BV(WGM12) | _BV(CS10);

  /* set initial duty cycle to zero */
  OCR1A = 0;

  /* Setup Timer0 */

  TCCR0 |= (1 << CS00);
  TCNT0 = 0;
  TIMSK |= (1 << TOIE0);

  wdt_enable(WDTO_1S);
  sei();

  for (;;) {                /* main event loop */
    wdt_reset();
  }

  return 0;
}


