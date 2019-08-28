#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

int main(void) {

  DDRD = (1 << DDD4);
  wdt_enable(WDTO_2S);


  while(1) {
    wdt_reset();

    PORTD = (1 << PORTD4);
    _delay_ms(500);
    PORTD = (0 << PORTD4);
    _delay_ms(500);
  }

  return 0;
}
