/*********************************************************************************
* File Name     : tester.h
* Created By    : Svetlana Linuxenko
* Creation Date : [2019-10-06 20:54]
* Last Modified : [2019-10-06 21:13]
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

const uint8_t CapTestMode               = V_CAPTESTMODE;
const unsigned int F_VER                = _FIRMWARE_VERSION_;
const unsigned int F_REV                = _FIRMWARE_REVISION_;
const unsigned int H_REV                = _HARDWARE_REVISION_;
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
