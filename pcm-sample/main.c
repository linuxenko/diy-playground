/*
 * Sound player from a header file (converted wav into C representation)
 * The code was borrowed from https://avrpcm.blogspot.com/2010/11/playing-8-bit-pcm-using-any-avr.html
 *
 */
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>

#include "pcm_sample.h"

volatile uint16_t sample;
int sample_count;

/* Kind of manual frame rate adjustment */
volatile int skip_frame;

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

  sample_count = 4;

  sei();

  wdt_enable(WDTO_2S);
  while(1) {
    wdt_reset();
  }

  return 0;
}


ISR(TIMER0_OVF_vect) {

  if (skip_frame < 1) {
    skip_frame++;
    return;
  }

  skip_frame = 0;
  sample_count--;

  if (sample_count == 0) {
    sample_count = 4;

    OCR1A = pgm_read_byte(&pcm_samples[sample++]);

    if(sample>pcm_length) {
      sample = 0;
    }
  }
}
