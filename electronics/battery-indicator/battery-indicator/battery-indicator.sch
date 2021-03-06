EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5DD300DB
P 2600 1600
F 0 "Q1" H 2791 1646 50  0000 L CNN
F 1 "BC547" H 2791 1555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 2800 1525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2600 1600 50  0001 L CNN
	1    2600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DD30BBF
P 2250 1300
F 0 "R2" H 2320 1346 50  0000 L CNN
F 1 "1k" H 2320 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2180 1300 50  0001 C CNN
F 3 "~" H 2250 1300 50  0001 C CNN
	1    2250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DD311C9
P 2250 1900
F 0 "R3" H 2320 1946 50  0000 L CNN
F 1 "1k" H 2320 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2180 1900 50  0001 C CNN
F 3 "~" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1450 2250 1600
Wire Wire Line
	2250 1600 2400 1600
Connection ~ 2250 1600
Wire Wire Line
	2250 1600 2250 1750
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5DD31A07
P 850 900
F 0 "J1" H 950 1150 50  0000 C CNN
F 1 "pwr-switch" H 950 1050 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 850 900 50  0001 C CNN
F 3 "~" H 850 900 50  0001 C CNN
	1    850  900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5DD34130
P 850 2150
F 0 "J2" H 950 2400 50  0000 C CNN
F 1 "pwr" H 950 2300 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 850 2150 50  0001 C CNN
F 3 "~" H 850 2150 50  0001 C CNN
	1    850  2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DD3587F
P 1850 2450
F 0 "C2" H 1965 2496 50  0000 L CNN
F 1 "100nf" H 1965 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 1888 2300 50  0001 C CNN
F 3 "~" H 1850 2450 50  0001 C CNN
	1    1850 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5DD35E68
P 1500 2450
F 0 "C1" H 1618 2496 50  0000 L CNN
F 1 "10uf" H 1618 2405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 1538 2300 50  0001 C CNN
F 3 "~" H 1500 2450 50  0001 C CNN
	1    1500 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5DD363AD
P 2250 2450
F 0 "C3" H 2368 2496 50  0000 L CNN
F 1 "10uf" H 2368 2405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 2288 2300 50  0001 C CNN
F 3 "~" H 2250 2450 50  0001 C CNN
	1    2250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2150 1400 2150
Wire Wire Line
	1400 2150 1400 2300
Wire Wire Line
	1400 2300 1500 2300
Wire Wire Line
	1500 2300 1850 2300
Connection ~ 1500 2300
Wire Wire Line
	1850 2300 2250 2300
Connection ~ 1850 2300
Wire Wire Line
	1050 2250 1250 2250
Wire Wire Line
	1250 2250 1250 2600
Wire Wire Line
	1250 2600 1500 2600
Wire Wire Line
	1500 2600 1850 2600
Connection ~ 1500 2600
Wire Wire Line
	1850 2600 2250 2600
Connection ~ 1850 2600
$Comp
L power:GND #PWR02
U 1 1 5DD38B38
P 2250 2900
F 0 "#PWR02" H 2250 2650 50  0001 C CNN
F 1 "GND" H 2255 2727 50  0000 C CNN
F 2 "" H 2250 2900 50  0001 C CNN
F 3 "" H 2250 2900 50  0001 C CNN
	1    2250 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5DD3B166
P 2700 2300
F 0 "D1" H 2700 2084 50  0000 C CNN
F 1 "fr207" H 2700 2175 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P12.70mm_Horizontal" H 2700 2300 50  0001 C CNN
F 3 "~" H 2700 2300 50  0001 C CNN
	1    2700 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 2300 2550 2300
Connection ~ 2250 2300
Wire Wire Line
	2250 2050 2250 2300
$Comp
L power:GND #PWR01
U 1 1 5DD41DBF
P 1300 1850
F 0 "#PWR01" H 1300 1600 50  0001 C CNN
F 1 "GND" H 1305 1677 50  0000 C CNN
F 2 "" H 1300 1850 50  0001 C CNN
F 3 "" H 1300 1850 50  0001 C CNN
	1    1300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1000 1300 1000
Wire Wire Line
	1050 900  2250 900 
Wire Wire Line
	2250 900  2250 1150
Wire Wire Line
	2850 2300 3100 2300
Connection ~ 2250 900 
Wire Wire Line
	2700 1400 2700 900 
Wire Wire Line
	2700 900  2250 900 
$Comp
L Device:R R4
U 1 1 5DD44B33
P 3450 1800
F 0 "R4" V 3243 1800 50  0000 C CNN
F 1 "1k" V 3334 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3380 1800 50  0001 C CNN
F 3 "~" H 3450 1800 50  0001 C CNN
	1    3450 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1800 3300 1800
Wire Wire Line
	2250 2600 2250 2900
Connection ~ 2250 2600
$Comp
L Device:R R1
U 1 1 5DD473D2
P 1900 1600
F 0 "R1" V 1693 1600 50  0000 C CNN
F 1 "470k" V 1784 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1830 1600 50  0001 C CNN
F 3 "~" H 1900 1600 50  0001 C CNN
	1    1900 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1600 2250 1600
Wire Wire Line
	1300 1600 1750 1600
Wire Wire Line
	1300 1000 1300 1600
Wire Wire Line
	1300 1600 1300 1850
Connection ~ 1300 1600
$Comp
L Device:D_Zener D2
U 1 1 5DD518D4
P 4550 4600
F 0 "D2" V 4504 4679 50  0000 L CNN
F 1 "3.6v" V 4595 4679 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 4550 4600 50  0001 C CNN
F 3 "~" H 4550 4600 50  0001 C CNN
	1    4550 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DD52784
P 4550 1300
F 0 "R5" H 4620 1346 50  0000 L CNN
F 1 "1.8k" H 4620 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4480 1300 50  0001 C CNN
F 3 "~" H 4550 1300 50  0001 C CNN
	1    4550 1300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 5DD53F7F
P 5100 1950
F 0 "U1" H 5100 2317 50  0000 C CNN
F 1 "LM358" H 5100 2226 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 5100 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5100 1950 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 5DD559D7
P 5100 2650
F 0 "U1" H 5100 3017 50  0000 C CNN
F 1 "LM358" H 5100 2926 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 5100 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5100 2650 50  0001 C CNN
	2    5100 2650
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 5DD56FAD
P 5850 1250
F 0 "U1" H 5808 1296 50  0000 L CNN
F 1 "LM358" H 5808 1205 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 5850 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5850 1250 50  0001 C CNN
	3    5850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1800 3850 1800
Wire Wire Line
	3850 1800 3850 950 
Wire Wire Line
	3850 950  4150 950 
Wire Wire Line
	4550 950  4550 1150
Connection ~ 4550 950 
Wire Wire Line
	4550 1450 4550 2050
$Comp
L power:GND #PWR04
U 1 1 5DD96E13
P 4550 5050
F 0 "#PWR04" H 4550 4800 50  0001 C CNN
F 1 "GND" H 4555 4877 50  0000 C CNN
F 2 "" H 4550 5050 50  0001 C CNN
F 3 "" H 4550 5050 50  0001 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4750 4550 4900
Wire Wire Line
	4800 2750 4550 2750
Wire Wire Line
	4800 2050 4550 2050
Connection ~ 4550 2050
Wire Wire Line
	4550 2050 4550 2750
$Comp
L Amplifier_Operational:LM358 U2
U 1 1 5DDA92C1
P 5100 3400
F 0 "U2" H 5100 3767 50  0000 C CNN
F 1 "LM358" H 5100 3676 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 5100 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5100 3400 50  0001 C CNN
	1    5100 3400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 2 1 5DDAC69E
P 5100 4050
F 0 "U2" H 5100 4417 50  0000 C CNN
F 1 "LM358" H 5100 4326 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 5100 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5100 4050 50  0001 C CNN
	2    5100 4050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 3 1 5DDAFFDF
P 6250 1250
F 0 "U2" H 6208 1296 50  0000 L CNN
F 1 "LM358" H 6208 1205 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 6250 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6250 1250 50  0001 C CNN
	3    6250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 950  5750 950 
Wire Wire Line
	5750 950  6150 950 
Connection ~ 5750 950 
$Comp
L power:GND #PWR05
U 1 1 5DDC9D75
P 5950 1700
F 0 "#PWR05" H 5950 1450 50  0001 C CNN
F 1 "GND" H 5955 1527 50  0000 C CNN
F 2 "" H 5950 1700 50  0001 C CNN
F 3 "" H 5950 1700 50  0001 C CNN
	1    5950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1550 5950 1550
Wire Wire Line
	5950 1700 5950 1550
Connection ~ 5950 1550
Wire Wire Line
	5950 1550 6150 1550
Wire Wire Line
	4550 2750 4550 3500
Connection ~ 4550 2750
Wire Wire Line
	4800 3500 4550 3500
Connection ~ 4550 3500
Wire Wire Line
	4550 3500 4550 4150
Wire Wire Line
	4800 4150 4550 4150
Connection ~ 4550 4150
Wire Wire Line
	4550 4150 4550 4450
$Comp
L Device:R_POT RV4
U 1 1 5DDD451B
P 4150 1850
F 0 "RV4" H 4080 1896 50  0000 R CNN
F 1 "5k" H 4080 1805 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4150 1850 50  0001 C CNN
F 3 "~" H 4150 1850 50  0001 C CNN
	1    4150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5DDD5234
P 4100 2550
F 0 "RV1" H 4030 2596 50  0000 R CNN
F 1 "5k" H 4030 2505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4100 2550 50  0001 C CNN
F 3 "~" H 4100 2550 50  0001 C CNN
	1    4100 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5DDD5C4D
P 4100 3300
F 0 "RV2" H 4030 3346 50  0000 R CNN
F 1 "5k" H 4030 3255 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4100 3300 50  0001 C CNN
F 3 "~" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5DDD7FA7
P 4100 3950
F 0 "RV3" H 4030 3996 50  0000 R CNN
F 1 "5k" H 4030 3905 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4100 3950 50  0001 C CNN
F 3 "~" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3950 4250 3950
Wire Wire Line
	4800 3300 4250 3300
Wire Wire Line
	4800 2550 4250 2550
Wire Wire Line
	4800 1850 4300 1850
Wire Wire Line
	4150 950  4150 1450
Connection ~ 4150 950 
Wire Wire Line
	4150 950  4550 950 
Wire Wire Line
	4100 2400 4100 2250
Wire Wire Line
	4100 2250 4350 2250
Wire Wire Line
	4350 2250 4350 1450
Wire Wire Line
	4350 1450 4150 1450
Connection ~ 4150 1450
Wire Wire Line
	4150 1450 4150 1700
Wire Wire Line
	4100 3150 4100 3000
Wire Wire Line
	4100 3000 4350 3000
Wire Wire Line
	4350 3000 4350 2250
Connection ~ 4350 2250
Wire Wire Line
	4100 3800 4100 3600
Wire Wire Line
	4100 3600 4350 3600
Wire Wire Line
	4350 3600 4350 3000
Connection ~ 4350 3000
Wire Wire Line
	3700 4900 4550 4900
Connection ~ 4550 4900
Wire Wire Line
	4550 4900 4550 5050
Wire Wire Line
	4100 2700 4100 2900
Wire Wire Line
	4100 2900 3700 2900
Wire Wire Line
	3700 2900 3700 3550
Wire Wire Line
	4100 3450 4100 3550
Wire Wire Line
	4100 3550 3700 3550
Connection ~ 3700 3550
Wire Wire Line
	3700 3550 3700 4400
Wire Wire Line
	4100 4100 4100 4400
Wire Wire Line
	4100 4400 3700 4400
Connection ~ 3700 4400
Wire Wire Line
	3700 4400 3700 4900
$Comp
L Device:R R6
U 1 1 5DE05856
P 6350 1950
F 0 "R6" V 6143 1950 50  0000 C CNN
F 1 "10k" V 6234 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6280 1950 50  0001 C CNN
F 3 "~" H 6350 1950 50  0001 C CNN
	1    6350 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5DE06C7C
P 6350 2650
F 0 "R7" V 6143 2650 50  0000 C CNN
F 1 "10k" V 6234 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6280 2650 50  0001 C CNN
F 3 "~" H 6350 2650 50  0001 C CNN
	1    6350 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DE0765A
P 6350 3400
F 0 "R8" V 6143 3400 50  0000 C CNN
F 1 "10k" V 6234 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6280 3400 50  0001 C CNN
F 3 "~" H 6350 3400 50  0001 C CNN
	1    6350 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5DE07EDA
P 6350 4050
F 0 "R9" V 6143 4050 50  0000 C CNN
F 1 "10k" V 6234 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6280 4050 50  0001 C CNN
F 3 "~" H 6350 4050 50  0001 C CNN
	1    6350 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4050 6200 4050
Wire Wire Line
	6200 3400 5400 3400
Wire Wire Line
	6200 2650 5400 2650
Wire Wire Line
	6200 1950 5400 1950
$Comp
L Device:LED D3
U 1 1 5DE21109
P 6950 1950
F 0 "D3" H 6943 1695 50  0000 C CNN
F 1 "red" H 6943 1786 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6950 1950 50  0001 C CNN
F 3 "~" H 6950 1950 50  0001 C CNN
	1    6950 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 1950 6800 1950
$Comp
L Device:LED D4
U 1 1 5DE2890F
P 6950 2650
F 0 "D4" H 6943 2395 50  0000 C CNN
F 1 "green" H 6943 2486 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6950 2650 50  0001 C CNN
F 3 "~" H 6950 2650 50  0001 C CNN
	1    6950 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 2650 6800 2650
$Comp
L Device:LED D5
U 1 1 5DE2C756
P 6950 3400
F 0 "D5" H 6943 3145 50  0000 C CNN
F 1 "green" H 6943 3236 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6950 3400 50  0001 C CNN
F 3 "~" H 6950 3400 50  0001 C CNN
	1    6950 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 3400 6800 3400
$Comp
L Device:LED D6
U 1 1 5DE2F655
P 6950 4050
F 0 "D6" H 6943 3795 50  0000 C CNN
F 1 "green" H 6943 3886 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6950 4050 50  0001 C CNN
F 3 "~" H 6950 4050 50  0001 C CNN
	1    6950 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 4050 6800 4050
$Comp
L power:GND #PWR06
U 1 1 5DE39E14
P 7500 5000
F 0 "#PWR06" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7505 4827 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1950 7500 1950
Wire Wire Line
	7500 1950 7500 2650
Connection ~ 7500 2650
Wire Wire Line
	7500 2650 7500 3400
Wire Wire Line
	7100 2650 7500 2650
Wire Wire Line
	7100 3400 7500 3400
Connection ~ 7500 3400
Wire Wire Line
	7500 3400 7500 4050
Wire Wire Line
	7100 4050 7500 4050
Connection ~ 7500 4050
Wire Wire Line
	7500 4050 7500 5000
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DE579AE
P 950 3450
F 0 "J3" H 1050 3700 50  0000 C CNN
F 1 "battery" H 1050 3600 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 950 3450 50  0001 C CNN
F 3 "~" H 950 3450 50  0001 C CNN
	1    950  3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 3100 3450
Wire Wire Line
	3100 3450 1150 3450
$Comp
L power:GND #PWR03
U 1 1 5DE5B622
P 2250 3750
F 0 "#PWR03" H 2250 3500 50  0001 C CNN
F 1 "GND" H 2255 3577 50  0000 C CNN
F 2 "" H 2250 3750 50  0001 C CNN
F 3 "" H 2250 3750 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3550 2250 3550
Wire Wire Line
	2250 3550 2250 3750
Wire Wire Line
	4150 2000 4150 2150
Wire Wire Line
	4150 2150 3700 2150
Wire Wire Line
	3700 2150 3700 2900
Connection ~ 3700 2900
Text Notes 2850 1300 0    50   ~ 0
wrong or
$EndSCHEMATC
