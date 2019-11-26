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
L Memory_Flash:W25Q32JVSS U1
U 1 1 5DD6894C
P 4250 3300
F 0 "U1" H 3800 3900 50  0000 C CNN
F 1 "W25Q32JVSS" H 3950 3750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 4250 3300 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 4250 3300 50  0001 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DD68E7C
P 3000 3200
F 0 "R1" V 2793 3200 50  0000 C CNN
F 1 "150R" V 2884 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2930 3200 50  0001 C CNN
F 3 "~" H 3000 3200 50  0001 C CNN
	1    3000 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DD6992B
P 3000 3550
F 0 "R2" V 2793 3550 50  0000 C CNN
F 1 "150R" V 2884 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2930 3550 50  0001 C CNN
F 3 "~" H 3000 3550 50  0001 C CNN
	1    3000 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 3200 3750 3200
Wire Wire Line
	3150 3550 3750 3550
Wire Wire Line
	3750 3550 3750 3400
$Comp
L Device:R R3
U 1 1 5DD6A50C
P 5300 3100
F 0 "R3" V 5093 3100 50  0000 C CNN
F 1 "150R" V 5184 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 3100 50  0001 C CNN
F 3 "~" H 5300 3100 50  0001 C CNN
	1    5300 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DD6AAB2
P 5300 3200
F 0 "R4" V 5500 3200 50  0000 C CNN
F 1 "150R" V 5400 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 3200 50  0001 C CNN
F 3 "~" H 5300 3200 50  0001 C CNN
	1    5300 3200
	0    -1   1    0   
$EndComp
Wire Wire Line
	4750 3100 5150 3100
Wire Wire Line
	4750 3200 5150 3200
Wire Wire Line
	4750 3500 5000 3500
Wire Wire Line
	5000 3500 5000 3400
Wire Wire Line
	5000 2700 4250 2700
Wire Wire Line
	4250 2700 4250 2900
Wire Wire Line
	4750 3400 5000 3400
Connection ~ 5000 3400
Wire Wire Line
	5000 3400 5000 2800
$Comp
L Device:CP C1
U 1 1 5DD6C99E
P 5000 3850
F 0 "C1" H 5118 3896 50  0000 L CNN
F 1 "47uF" H 5118 3805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 5038 3700 50  0001 C CNN
F 3 "~" H 5000 3850 50  0001 C CNN
	1    5000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3500 5000 3700
Connection ~ 5000 3500
$Comp
L power:GND #PWR02
U 1 1 5DD6D795
P 4250 4300
F 0 "#PWR02" H 4250 4050 50  0001 C CNN
F 1 "GND" H 4255 4127 50  0000 C CNN
F 2 "" H 4250 4300 50  0001 C CNN
F 3 "" H 4250 4300 50  0001 C CNN
	1    4250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3700 4250 4150
Wire Wire Line
	5000 4000 5000 4150
Wire Wire Line
	5000 4150 4250 4150
Connection ~ 4250 4150
Wire Wire Line
	4250 4150 4250 4300
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5DD715A2
P 1500 3300
F 0 "J1" H 1600 3800 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1600 3650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1500 3300 50  0001 C CNN
F 3 "~" H 1500 3300 50  0001 C CNN
	1    1500 3300
	1    0    0    -1  
$EndComp
Text GLabel 1700 3500 2    50   Input ~ 0
vcc
Text GLabel 5050 2800 2    50   Input ~ 0
vcc
Wire Wire Line
	5000 2800 5050 2800
Connection ~ 5000 2800
Wire Wire Line
	5000 2800 5000 2700
Text Notes 1350 3650 0    50   ~ 0
25
$Comp
L power:GND #PWR01
U 1 1 5DD772F1
P 1900 3650
F 0 "#PWR01" H 1900 3400 50  0001 C CNN
F 1 "GND" H 1905 3477 50  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3600 1900 3600
Wire Wire Line
	1900 3600 1900 3650
Text Notes 1350 3550 0    50   ~ 0
17
Wire Wire Line
	1700 3400 2750 3400
Wire Wire Line
	2750 3400 2750 3550
Wire Wire Line
	2750 3550 2850 3550
Wire Wire Line
	1700 3300 2700 3300
Wire Wire Line
	2700 3300 2700 3200
Wire Wire Line
	2700 3200 2850 3200
Text Notes 1350 3450 0    50   ~ 0
23
Text Notes 1350 3350 0    50   ~ 0
24
Text GLabel 1700 3200 2    50   Input ~ 0
dio
Text GLabel 1700 3100 2    50   Input ~ 0
do
Text GLabel 5450 3100 2    50   Input ~ 0
dio
Text GLabel 5450 3200 2    50   Input ~ 0
do
Text Notes 1350 3250 0    50   ~ 0
19
Text Notes 1350 3150 0    50   ~ 0
21
$EndSCHEMATC
