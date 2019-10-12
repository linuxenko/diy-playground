/*********************************************************************************
* File Name     : tester.h
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-10-06 20:54]
* Last Modified : [2019-10-06 23:45]
* Description   :  
**********************************************************************************/

#ifndef _TESTER_H_
#define _TESTER_H_

/*
 * main.c
 */
void    CheckPins (uint8_t HighPin, uint8_t LowPin, uint8_t TristatePin);
void    DischargePin (uint8_t PinToDischarge, uint8_t DischargeDirection);
void    lcd_show_format_cap (char outval[], uint8_t strlength, uint8_t CommaPos);
void    ReadCapacity (uint8_t HighPin, uint8_t LowPin);
unsigned int  ReadADC (uint8_t mux);

/*
 * Alternative names for probes
 */
#define ENABLE_PIN_ALIAS

#ifdef ENABLE_PIN_ALIAS
#define PIN1_ALIAS 'A'        // [pFLAG]
#define PIN2_ALIAS 'B' 
#define PIN3_ALIAS 'C'
#endif

#define ASCII_1 49            // Ascii one.
#define ASCII_0 48            // Ascii zero.

#define ADC_PORT PORTC        // Use port C for A to D inputs
#define ADC_DDR DDRC
#define ADC_PIN PINC
#define TP1 PC0               // AVR pin 23 probe.
#define TP2 PC1               // AVR pin 24 probe.
#define TP3 PC2               // AVR pin 25 probe.

#define SMALL_CAP_VALUE 15   // 218  0xDA    Adjust for accuracy on big Caps with 750R, was 394
#define LARGE_CAP_VALUE 15   // 167  0xA7    Adjust for accuracy, small Caps with 500K, was 283
#define LARGE_R_VALUE 4700
#define SMALL_R_VALUE 680
#define NORMAL_CAP_TESTS 1    // Just do normal Cap test, compare to CapTestMode in EEPROM, 2 to enable all
#define HALF_ADC_RANGE 512    // midpoint of ADC
#define MAX_ADC 1023          // Maximum ADC count
#define WDT_enabled 1         // Watchdog active for normal use, disable for debug

#define V_CAPTESTMODE 0b00100010    // 34 0x22, last used EEPROM address 0x15A, Cap test type, pins to use
// DEFAULT  0x22 = All 6 Cap Tests, 1st 0, 2nd 2

#define SETBIT(ADDRESS,BIT) (ADDRESS |= (1<<BIT)) 
#define CLEARBIT(ADDRESS,BIT) (ADDRESS &= ~(1<<BIT)) 
#define FLIPBIT(ADDRESS,BIT) (ADDRESS ^= (1<<BIT)) 
#define CHECKBIT(ADDRESS,BIT) (ADDRESS & (1<<BIT)) 

#define R_DDR DDRB
#define R_PORT PORTB

// Physical and logical hookup:
//
// Original usd Mega8, mine is Mega328P, same pinout in dip28
//
// Output ----->Rlow----->
//                          join here , probe ----> Input
// Output ----->RHigh----->
//
// two outputs, two R's, one probe, one input
// repeat for 3 probes
//
// 14-PB0 Rx-750R     23-PC0 -> Probe  RL1
// 15-PB1       Rx 500K     23-PC0   RH1
//
// 16-PB2 Rx-750R     24-PC1 -> Probe  RL2
// 17-PB3 Rx 500K     24-PC1   RH2
//
// 18-PB4 Rx-750R     25-PC2 -> Probe  RL3
// 19-PB5 Rx 500K     25-PC2   RH3
//
// 26-PC3-x
// 27-PC4-x
//
// Voltage divider for the battery monitor.
// Pin 28, PC5(ADC5) monitors it.
//
// Vin (v) --->  diode ----> 10K ---28-PC5(ADC5) and ---3K3 ---> GND
// ----> Vreg ---. +5V
// There is a 5V1 Zener across the 3K3 to ground, this is for ADC input protection.
// The Battery/PS input is not regulated at all, so could be high or spiky.
//
// It will never set 5V1 as the input is too small.
//

//// Supported Components ///////////////////////
#define PART_NONE    0
#define PART_DIODE    1
#define PART_TRANSISTOR  2
#define PART_FET    3
#define PART_TRIAC    4
#define PART_THYRISTOR   5
#define PART_RESISTOR   6
#define PART_CAPACITOR   7

//// Special definitions for Devices ////////////
#define PART_MODE_N_E_MOS 1
#define PART_MODE_P_E_MOS  2
#define PART_MODE_N_D_MOS  3
#define PART_MODE_P_D_MOS  4
#define PART_MODE_N_JFET  5
#define PART_MODE_P_JFET  6

//// Transistor Ident ////////////////////////////
#define PART_MODE_NPN   1
#define PART_MODE_PNP   2


//// Pin Registers ///////////////////////////////
#define PWRMODE_DDR   DDRB
#define PWRMODE_PIN   PINB
#define PWRMODE_PORT  PORTB
#define PWRMODE_BIT   PB6

const uint8_t CapTestMode               = V_CAPTESTMODE;
const unsigned int R_L_VAL              = SMALL_R_VALUE;
const unsigned int R_H_VAL              = LARGE_R_VALUE;
const unsigned int H_CAPACITY_FACTOR    = SMALL_CAP_VALUE;
const unsigned int L_CAPACITY_FACTOR    = LARGE_CAP_VALUE;

const unsigned char TestRunning[]       = "Testing   ->";
const unsigned char TestCapV[]          = "Measuring ->";
const unsigned char Bat[]               = "Battery ";
const unsigned char BatWeak[]           = "weak";
const unsigned char BatEmpty[]          = "empty!";
const unsigned char TestFailed1[]       = "Unknown, Damaged";
const unsigned char TestFailed2[]       = "or Nothing found";
const unsigned char BadResult1[]        = " Part's Unknown";
const unsigned char BadResult2[]        = " or Damaged: ";
const unsigned char TestTimedOut[]      = "Timeout!";
// Components
const unsigned char Diode[]             = "Diode: ";
const unsigned char DualDiode[]         = "Double diode ";
const unsigned char TwoDiodes[]         = "2 diodes";
const unsigned char Antiparallel[]      = "anti-parallel";
const unsigned char Resistor[]          = "Resistor: ";
const unsigned char Capacitor[]         = "Capacitor: ";
const unsigned char InSeries[]          = "serial A=";
const unsigned char Triac[]             = "Triac";
const unsigned char Thyristor[]         = "Thyristor";
// Codes and Values
const unsigned char K1[]                = ";C1=";
const unsigned char K2[]                = ";C2=";
const unsigned char GAK[]               = "GAC=";
const unsigned char NextK[]             = ";C=";
const unsigned char K[]                 = "C=";
const unsigned char mosfet[]            = "-MOS";
const unsigned char emode[]             = "-E";
const unsigned char dmode[]             = "-D";
const unsigned char jfet[]              = "-JFET";
const unsigned char A1[]                = ";A1=";
const unsigned char A2[]                = ";A2=";
const unsigned char GateCap[]           = " C=";
const unsigned char hfestr[]            = "hFE=";
const unsigned char NPN[]               = "NPN";
const unsigned char PNP[]               = "PNP";
const unsigned char bstr[]              = " B=";
const unsigned char cstr[]              = ";C=";
const unsigned char estr[]              = ";E=";
const unsigned char gds[]               = "GDS=";
const unsigned char Uf[]                = "Uf=";
const unsigned char vt[]                = "Vt=";
const unsigned char mV[]                = "mV";
const unsigned char Anode[]             = "A=";
const unsigned char Gate[]              = "G=";
const unsigned char CA[]                = "CA";
const unsigned char CC[]                = "CC";

//const unsigned char DiodeIcon[]         = {4,31,31,14,14,4,31,4,0}; // Diode icon

struct Diode {
  uint8_t Anode;
  uint8_t Cathode;
  int Voltage;
};

#endif
