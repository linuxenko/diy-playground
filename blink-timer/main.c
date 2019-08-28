/*
 * Timer example with precision calculated by loop
 *
 * time1 counts down the milliseconds from T1 until it reaches zero.
 * The main loop checks for time1 == 0 then performs the task & resets the countdown.
 *
 * source for atmega328 https://github.com/theapi/avr_timer0/blob/master/main.c
 *
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#define TIMER_INTERVAL 1000

volatile int itimer;

int main(void) {
  // set up timer 0 for 1 mSec ticks (timer 0 is an 8 bit timer)

  // Interupt mask register - to enable the interupt (datasheet: 14.9.6)
  // (Bit 1 – OCIE0A: Timer/Counter0 Output Compare Match A Interrupt Enable)
  TIMSK = (1 << OCIE1A); // (2) turn on timer 0 cmp match ISR

  // Compare register - when to interupt (datasheet: 14.9.4)
  OCR1A = 249; // set the compare reg to 250 time ticks

  // Timer mode (datasheet: 14.9.1)
  TCCR1A = (1 << WGM10); // (0b00000010) turn on clear-on-match

  // Prescaler (datasheet: 14.9.2)
  // calculation to show why 64 is required the prescaler:
  // 1 / (16000000 / 64 / 256) = 0.001024 = 1ms (near enough)
  TCCR1B = ((1 << CS10) | (1 << CS11)); // (0b00000011)(3) clock prescalar to 64

  // Timer initialization
  itimer = TIMER_INTERVAL;

  // Port initialization
  DDRD = (1 << PORTD4);
  PORTD |= (1 << PORTD4); // turn the LED on

  // crank up the ISRs
  sei();

  wdt_enable(WDTO_1S);

  while(1) {
    wdt_reset();

    // check for itimer countdown reached zero
    if (itimer == 0) {
      itimer = TIMER_INTERVAL;

      // toggle led
      PORTD ^= (1 << PORTD4);
    }
  }

  return 0;
}


ISR(TIMER1_COMPA_vect) {
  if (itimer > 0) {
    itimer--;
  }
}
