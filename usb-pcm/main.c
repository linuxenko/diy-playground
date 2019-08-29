#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include <string.h>

#include <avr/pgmspace.h>
#include "usbdrv.h"


/* ------------------------------------------------------------------------- */
/* ----------------------------- USB interface ----------------------------- */
/* ------------------------------------------------------------------------- */
PROGMEM const char usbHidReportDescriptor[22] = {    /* USB report descriptor */
  0x06, 0x00, 0xff,              // USAGE_PAGE (Generic Desktop)
  0x09, 0x01,                    // USAGE (Vendor Usage 1)
  0xa1, 0x01,                    // COLLECTION (Application)
  0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
  0x26, 0xff, 0x00,              //   LOGICAL_MAXIMUM (255)
  0x75, 0x08,                    //   REPORT_SIZE (8)
  0x95, 0x80,                    //   REPORT_COUNT (128)
  0x09, 0x00,                    //   USAGE (Undefined)
  0xb2, 0x02, 0x01,              //   FEATURE (Data,Var,Abs,Buf)
  0xc0                           // END_COLLECTION
};

/* Since we define only one feature report, we don't use report-IDs (which
 * would be the first byte of the report). The entire report consists of 128
 * opaque data bytes.
 */

/* The following variables store the status of the current data transfer */

/* ------------------------------------------------------------------------- */

/* usbFunctionRead() is called when the host requests a chunk of data from
 * the device. For more information see the documentation in usbdrv/usbdrv.h.
 */
uchar usbFunctionRead(uchar *data, uchar len) {
  return 0;
}

#define BSIZE 128

static uchar    currentAddress;
static uchar    bytesRemaining;
static uchar buffer[BSIZE];
volatile static uchar wlock = 0;

/* usbFunctionWrite() is called when the host sends a chunk of data to the
 * device. For more information see the documentation in usbdrv/usbdrv.h.
 */
uchar usbFunctionWrite(uchar *data, uchar len) {

  if (len > bytesRemaining)
      len = bytesRemaining;

/*  for(i = 0; i < len; i++){*/
/**/
/*    if ((currentAddress + i) < BSIZE) {*/
/*      buffer[currentAddress + i] = data[i];*/
/*    }*/
/*  }*/

  if (data && len > 0) {
    memcpy(buffer + currentAddress, data, len);
  }

  currentAddress += len;
  bytesRemaining -= len;

  if (bytesRemaining == 0) {
    wlock = 1;
    while(wlock != 0) { }

    return 1;               /* end of transfer */
  }

  return 0;
}

/* ------------------------------------------------------------------------- */

usbMsgLen_t usbFunctionSetup(uchar data[8]) {

  usbRequest_t *rq = (void *)data;

  if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {    /* HID class request */
    if (rq->bRequest == USBRQ_HID_GET_REPORT) {  /* wValue: ReportType (highbyte), ReportID (lowbyte) */
      /* since we have only one report type, we can ignore the report-ID */
      return USB_NO_MSG;  /* use usbFunctionRead() to obtain data */
    } else if (rq->bRequest == USBRQ_HID_SET_REPORT) {
      /* since we have only one report type, we can ignore the report-ID */

      bytesRemaining = BSIZE;
      currentAddress = 0;

      return USB_NO_MSG;  /* use usbFunctionWrite() to receive data from host */
    }
  } else{
    /* ignore vendor type requests, we don't use any */
  }

  return 0;
}

/* Kind of manual frame rate adjustment */
volatile uchar skip_frame;
volatile short cursor = 0;

ISR(TIMER0_OVF_vect) {

/*  if (skip_frame < 1) {*/
/*    skip_frame++;*/
/*    return;*/
/*  }*/
/**/
/*  skip_frame = 0;*/

  if (wlock != 0) {
    if (cursor >= BSIZE) {
      cursor = 0;
      wlock = 0;
    } else {
      OCR1A = buffer[cursor++];
    }
  }
}


/* ------------------------------------------------------------------------- */

int main(void)
{
  uchar   i;

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

  usbInit();
  usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
  i = 0;
  while(--i){             /* fake USB disconnect for > 250 ms */
    wdt_reset();
    _delay_ms(1);
  }
  usbDeviceConnect();
  sei();

  for(;;){                /* main event loop */
    wdt_reset();
    usbPoll();
  }
  return 0;
}


