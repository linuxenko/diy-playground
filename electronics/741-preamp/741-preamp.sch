EESchema Schematic File Version 4
LIBS:741-preamp-cache
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
L Amplifier_Operational:LM741 U1
U 1 1 5DCDAEE1
P 4550 1800
F 0 "U1" H 4600 2050 50  0000 L CNN
F 1 "LM741" H 4600 1950 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4600 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4700 1950 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DCDB53A
P 2250 1300
F 0 "C1" H 2135 1254 50  0000 R CNN
F 1 "100nF" H 2135 1345 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2288 1150 50  0001 C CNN
F 3 "~" H 2250 1300 50  0001 C CNN
	1    2250 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5DCDB825
P 5550 1800
F 0 "C4" V 5298 1800 50  0000 C CNN
F 1 "1n8(green)" V 5389 1800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5588 1650 50  0001 C CNN
F 3 "~" H 5550 1800 50  0001 C CNN
	1    5550 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5DCDC11C
P 3050 2050
F 0 "C2" V 2750 2050 50  0000 C CNN
F 1 "1n0k(green)" V 2850 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3088 1900 50  0001 C CNN
F 3 "~" H 3050 2050 50  0001 C CNN
	1    3050 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DCDC519
P 3700 2250
F 0 "R4" H 3770 2296 50  0000 L CNN
F 1 "33k" H 3770 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3630 2250 50  0001 C CNN
F 3 "~" H 3700 2250 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DCDC979
P 4100 1400
F 0 "R5" H 4170 1446 50  0000 L CNN
F 1 "1M" H 4170 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 1400 50  0001 C CNN
F 3 "~" H 4100 1400 50  0001 C CNN
	1    4100 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DCDCD58
P 2800 2250
F 0 "R1" H 2870 2296 50  0000 L CNN
F 1 "1M" H 2870 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2730 2250 50  0001 C CNN
F 3 "~" H 2800 2250 50  0001 C CNN
	1    2800 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DCDD53D
P 3300 2250
F 0 "R3" H 3370 2296 50  0000 L CNN
F 1 "470k" H 3370 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3230 2250 50  0001 C CNN
F 3 "~" H 3300 2250 50  0001 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DCDD7BB
P 3300 1800
F 0 "R2" H 3350 2050 50  0000 L CNN
F 1 "470k" H 3350 1950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3230 1800 50  0001 C CNN
F 3 "~" H 3300 1800 50  0001 C CNN
	1    3300 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5DCE09FC
P 1700 1050
F 0 "J1" H 1800 1300 50  0000 C CNN
F 1 "PWR" H 1800 1200 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1700 1050 50  0001 C CNN
F 3 "~" H 1700 1050 50  0001 C CNN
	1    1700 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5DCE1257
P 1700 1800
F 0 "J2" H 1800 2050 50  0000 C CNN
F 1 "Audio In" H 1800 1950 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1700 1800 50  0001 C CNN
F 3 "~" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DCE1ACF
P 6350 1900
F 0 "J3" H 6322 1782 50  0000 R CNN
F 1 "OUT" H 6322 1873 50  0000 R CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 6350 1900 50  0001 C CNN
F 3 "~" H 6350 1900 50  0001 C CNN
	1    6350 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 1800 2450 1800
$Comp
L power:GND #PWR02
U 1 1 5DCED73A
P 2450 2600
F 0 "#PWR02" H 2450 2350 50  0001 C CNN
F 1 "GND" H 2455 2427 50  0000 C CNN
F 2 "" H 2450 2600 50  0001 C CNN
F 3 "" H 2450 2600 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2050 2800 2100
Wire Wire Line
	2800 2400 2800 2500
Wire Wire Line
	2800 2500 2450 2500
Wire Wire Line
	1900 1900 1900 2500
Connection ~ 2450 2500
Wire Wire Line
	2450 2500 1900 2500
Wire Wire Line
	2450 2500 2450 2600
Wire Wire Line
	3300 2050 3300 2100
Wire Wire Line
	2800 2500 3300 2500
Wire Wire Line
	3300 2500 3300 2400
Connection ~ 2800 2500
Connection ~ 3300 2050
$Comp
L power:GND #PWR01
U 1 1 5DCFE056
P 2250 1550
F 0 "#PWR01" H 2250 1300 50  0001 C CNN
F 1 "GND" H 2255 1377 50  0000 C CNN
F 2 "" H 2250 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0001 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1050 4450 1500
Wire Wire Line
	1900 1150 2100 1150
Wire Wire Line
	1900 1050 2250 1050
Wire Wire Line
	2250 1150 2250 1050
Connection ~ 2250 1050
Wire Wire Line
	2250 1050 3300 1050
Wire Wire Line
	2250 1450 2250 1500
Wire Wire Line
	2100 1150 2100 1500
Wire Wire Line
	2100 1500 2250 1500
Connection ~ 2250 1500
Wire Wire Line
	2250 1500 2250 1550
Wire Wire Line
	3300 2050 3300 1950
Wire Wire Line
	3300 1050 3300 1650
Wire Wire Line
	4850 1800 5250 1800
Connection ~ 3300 2500
Wire Wire Line
	4450 2100 4450 2500
NoConn ~ 4550 2100
NoConn ~ 4650 2100
$Comp
L Device:C C3
U 1 1 5DCDBDD3
P 3850 1900
F 0 "C3" V 3950 2000 50  0000 L CNN
F 1 "103(orange)" V 4050 1950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3888 1750 50  0001 C CNN
F 3 "~" H 3850 1900 50  0001 C CNN
	1    3850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2500 3700 2500
Wire Wire Line
	4100 1900 4250 1900
Wire Wire Line
	4100 1250 4100 1150
Wire Wire Line
	4100 1150 5250 1150
Wire Wire Line
	5250 1150 5250 1800
Wire Wire Line
	4100 1550 4100 1900
Connection ~ 4100 1900
Wire Wire Line
	3300 2050 3500 2050
Wire Wire Line
	3500 2050 3500 1700
Wire Wire Line
	3500 1700 4250 1700
Wire Wire Line
	4000 1900 4100 1900
Wire Wire Line
	3700 1900 3700 2100
Wire Wire Line
	3700 2400 3700 2500
Connection ~ 3700 2500
Wire Wire Line
	3700 2500 4450 2500
Wire Wire Line
	3300 1050 4450 1050
Connection ~ 3300 1050
Wire Wire Line
	5250 1800 5400 1800
Connection ~ 5250 1800
Wire Wire Line
	5700 1800 6150 1800
$Comp
L power:GND #PWR03
U 1 1 5DD5C4F0
P 6050 2050
F 0 "#PWR03" H 6050 1800 50  0001 C CNN
F 1 "GND" H 6055 1877 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1900 6050 1900
Wire Wire Line
	6050 1900 6050 2050
Wire Wire Line
	2800 2050 2900 2050
Connection ~ 2800 2050
Wire Wire Line
	3200 2050 3300 2050
Wire Wire Line
	2450 1800 2450 2050
Wire Wire Line
	2450 2050 2800 2050
$EndSCHEMATC
