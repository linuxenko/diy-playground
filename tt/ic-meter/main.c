#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <math.h>

#include "uart.h"

#define CYCLES_PER_US ((F_CPU+500000)/1000000)

#define sbi(port, bit) (port) |= (1 << (bit))
#define cbi(port, bit) (port) &= ~(1 << (bit))

unsigned char freq_24 = 0;
unsigned int timer2_div25 = 0;
unsigned int freq_count_16 = 0;
volatile unsigned long int running;
unsigned long int F1;
unsigned long int F2;
double Ct;
double Lt;
double Ls;
double Cs;

// because of the 1024 prescaler and 125 CPC, at 16MHz,
// this routine gets called at 125Hz
ISR(TIMER2_COMPA_vect) {
  freq_count_16 = TCNT1; // get the count contained in the counter, NOW
  if(timer2_div25 == 24) { // because of div by 25, this routine gets called at 5Hz
    TCNT1 = 0;
    running = freq_count_16 + (65536 * freq_24);

    // reset things AFTER sending to display!
    timer2_div25 = 0;
    freq_24 = 0;
  }

  timer2_div25++;
}

// this timer will overflow twice or so
ISR(TIMER1_OVF_vect) {
  freq_24++;
}

void init(void) {
  // set up the 16 bit timer as an external frequency counter:
  TCCR1B |= (1 << CS10)|(1 << CS11)|(1 << CS12); // External clock, rising edge
  TIMSK1 |= (1 << TOIE1); // Enable overflow interrupt, it will overflow a few times in counting frequency

  // set up the 8 bit timer as a timebase for the frequency counter:
  TCCR2A |= (1 << WGM21);
  TCCR2B |= (1 << CS22)|(1 << CS21)|(1 << CS20); // CTC mode, 1024-bit prescale
  OCR2A = 125; // something we can factor into .2 second delays (at 16MHz) with some arithmetic
  TIMSK2 |= (1 << OCIE2A);

  // set up inputs and outputs:
  // enable  PD2 output, PD3 & PD4 inputs
  sbi(DDRD, PD6); // flashing LED to show we're running
  sbi(DDRD, PD3); // calibration relay
  cbi(DDRD, PD4); // switch to indicate L or C, use pullup
  cbi(DDRD, PD7); // pushbutton zeroing
  sbi(PORTD, PD4); // pullup on L/C switch
  sbi(PORTD, PD7); // pullup on zero pushbutton
}

int main(void) {
  init();
  sei();  // enable global interrupts

  uart_init(UART_BOUD_SELECT(9600, F_CPU));

  uart_puts("UARTI\n");

  // instruct about setting mode switch to C for calibration
  if(bit_is_clear(PIND, 4)) {
    uart_puts("Inducator setting mode C calibration \n");
  }

  while(bit_is_clear(PIND, 4)) {
    // wait for user to switch mode to C
  }

  // send out the calibration message:
  uart_puts("Out calibration\n");

  _delay_ms(1600);
  F1 = running;        // get open frequency
/*  uart_putsNum(10, 10, 0, ' ', F1 * 5);*/
/*  uart_puts("\r\n");*/
  sbi(PORTD, PD3);    // energize relay
  _delay_ms(1000);    // stabilize
  F2 = running;       // get test frequency
/*  uart_putsNum(10, 10, 0, ' ', F2 * 5);*/
/*  uart_puts("\r\n");*/
  cbi(PORTD, PD3);    // turn off relay

  // do some floating point:
  Cs = square(F2 * 5) * (.00000000092 / (square(F1 * 5) - square(F2 * 5))); // this should fit in a 64-bit value
  Ls = 1 / (4 * square(M_PI) * square(F1 * 5) * Cs);

  // enable  PC5 as output
  sbi(DDRC, PC5);

  while (1) {
    _delay_ms(200);

    if(bit_is_clear(PIND, 4)) { // inductance measurement mode
      if(running < 3) {
        uart_puts("Not an inductor                 \r");
      } else {
        Lt = (square(F1 * 5) / (square(running * 5)) - 1) * Ls;
        uart_puts("Lx: ");
        if(Lt > .0001) {
/*          uart_putsFloat(4, Lt * 1000);*/
          uart_puts("mH");
        }

        else if(Lt > .0000001) {
/*          uart_putsFloat(4, Lt * 1000000);*/
          uart_puts("uH");
        }

        else {
/*          uart_putsFloat(4, Lt * 1000000000);*/
          uart_puts("nH");
        }

        uart_puts("             \r");
      }
    } else {					// capacitance measurement mode
      if(running < 300) {
        uart_puts("Not a capacitor                 \r");
      } else {
        Ct = (square(F1 * 5) / (square(running * 5)) - 1) * Cs;
        uart_puts("Cx: ");
        if(Ct > .0001) {
/*          uart_putsFloat(4, Ct * 1000);*/
          uart_puts("mF");
        }

        else if(Ct > .0000001) {
/*          uart_putsFloat(4, Ct * 1000000);*/
          uart_puts("uF");
        }

        else if(Ct > .0000000001){
/*          uart_putsFloat(4, Ct * 1000000000);*/
          uart_puts("nF");
        }

        else {
/*          uart_putsFloat(4, Ct * 1000000000000);*/
          uart_puts("pF");
        }

        uart_puts("             \r");
      }
    }

    if(bit_is_clear(PIND, 7)) {
      uart_puts("zeroed                \r");
      uart_puts(blank_lcd_line);
      F1 = running;
    }

    while(bit_is_clear(PIND, 7)) {
      // do nothing till the user lets go of the zero button
    }

    // display the 
    lcdGotoXY(0,1);
/*    uart_putsNum(10, 6, 0, ' ', running * 5);*/
    uart_puts("Hz        ");
  }

  return 0;
}
