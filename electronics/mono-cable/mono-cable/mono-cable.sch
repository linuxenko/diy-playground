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
L Connector:Conn_01x04_Male J1
U 1 1 5DA9CD94
P 1600 2700
F 0 "J1" H 1500 3200 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1650 3050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1600 2700 50  0001 C CNN
F 3 "~" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5DA9D3BB
P 3300 2750
F 0 "J2" H 3350 2150 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3400 2300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3300 2750 50  0001 C CNN
F 3 "~" H 3300 2750 50  0001 C CNN
	1    3300 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DA9DEEC
P 2150 3100
F 0 "#PWR01" H 2150 2850 50  0001 C CNN
F 1 "GND" H 2155 2927 50  0000 C CNN
F 2 "" H 2150 3100 50  0001 C CNN
F 3 "" H 2150 3100 50  0001 C CNN
	1    2150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2800 2150 2800
Wire Wire Line
	2150 2800 2150 2900
Wire Wire Line
	1800 2900 2150 2900
Connection ~ 2150 2900
Wire Wire Line
	2150 2900 2150 3100
Wire Wire Line
	2150 2900 3100 2900
Wire Wire Line
	3100 2900 3100 2750
$Comp
L Device:R R1
U 1 1 5DA9E7FD
P 2500 2450
F 0 "R1" V 2293 2450 50  0000 C CNN
F 1 "220" V 2384 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2430 2450 50  0001 C CNN
F 3 "~" H 2500 2450 50  0001 C CNN
	1    2500 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DA9F3FD
P 2500 2800
F 0 "R2" V 2293 2800 50  0000 C CNN
F 1 "220" V 2384 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2430 2800 50  0001 C CNN
F 3 "~" H 2500 2800 50  0001 C CNN
	1    2500 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2600 2150 2600
Wire Wire Line
	2150 2600 2150 2450
Wire Wire Line
	2150 2450 2350 2450
Wire Wire Line
	1800 2700 2350 2700
Wire Wire Line
	2350 2700 2350 2800
Wire Wire Line
	2650 2450 2800 2450
Wire Wire Line
	2800 2450 2800 2650
Wire Wire Line
	2800 2800 2650 2800
Wire Wire Line
	2800 2650 3100 2650
Connection ~ 2800 2650
Wire Wire Line
	2800 2650 2800 2800
$EndSCHEMATC
