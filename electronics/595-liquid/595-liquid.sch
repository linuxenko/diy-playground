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
L 74xx:74HC595 U1
U 1 1 5E668361
P 3200 3200
F 0 "U1" H 2650 4000 50  0000 C CNN
F 1 "74HC595" H 2700 3850 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 3200 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3200 3200 50  0001 C CNN
	1    3200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2550 4850 2300
$Comp
L Device:R R1
U 1 1 5D882883
P 5700 3550
F 0 "R1" V 5493 3550 50  0000 C CNN
F 1 "220" V 5584 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 3550 50  0001 C CNN
F 3 "~" H 5700 3550 50  0001 C CNN
	1    5700 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3550 5550 3550
Wire Wire Line
	5850 3550 5950 3550
Wire Wire Line
	5950 3550 5950 3150
Wire Wire Line
	5950 2300 4850 2300
Connection ~ 4850 2300
Wire Wire Line
	4850 2300 4850 2200
$Comp
L Device:R_POT_Small R2
U 1 1 5D8849E4
P 5500 3150
F 0 "R2" V 5750 3150 50  0000 C CNN
F 1 "5K" V 5650 3150 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-V_Vertical" H 5500 3150 50  0001 C CNN
F 3 "~" H 5500 3150 50  0001 C CNN
	1    5500 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 3150 5950 3150
Connection ~ 5950 3150
Wire Wire Line
	5950 3150 5950 2300
$Comp
L Display_Character:RC1602A U2
U 1 1 5D875DF4
P 4850 3250
F 0 "U2" H 5000 3950 50  0000 C CNN
F 1 "RC1602A" H 4950 3300 50  0000 C CNN
F 2 "Display:WC1602A" H 4950 2450 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 4950 3150 50  0001 C CNN
	1    4850 3250
	1    0    0    -1  
$EndComp
NoConn ~ 4450 3050
NoConn ~ 4450 3150
NoConn ~ 4450 3250
NoConn ~ 4450 3350
Wire Wire Line
	5250 3050 5500 3050
$Comp
L power:+5V #PWR0105
U 1 1 5D983A3D
P 4850 2200
F 0 "#PWR0105" H 4850 2050 50  0001 C CNN
F 1 "+5V" H 4865 2373 50  0000 C CNN
F 2 "" H 4850 2200 50  0001 C CNN
F 3 "" H 4850 2200 50  0001 C CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E69E9A7
P 4850 4500
F 0 "#PWR05" H 4850 4250 50  0001 C CNN
F 1 "GND" H 4855 4327 50  0000 C CNN
F 2 "" H 4850 4500 50  0001 C CNN
F 3 "" H 4850 4500 50  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5E6A300F
P 3200 2250
F 0 "#PWR03" H 3200 2100 50  0001 C CNN
F 1 "+5V" H 3215 2423 50  0000 C CNN
F 2 "" H 3200 2250 50  0001 C CNN
F 3 "" H 3200 2250 50  0001 C CNN
	1    3200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3200 2600
$Comp
L power:GND #PWR04
U 1 1 5E6A3DB4
P 3200 4500
F 0 "#PWR04" H 3200 4250 50  0001 C CNN
F 1 "GND" H 3205 4327 50  0000 C CNN
F 2 "" H 3200 4500 50  0001 C CNN
F 3 "" H 3200 4500 50  0001 C CNN
	1    3200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3900 3200 4500
Wire Wire Line
	4850 3950 4850 4150
Connection ~ 4850 4150
Wire Wire Line
	4850 4150 4850 4500
Wire Wire Line
	5300 4150 5300 3450
Wire Wire Line
	5300 3150 5400 3150
Wire Wire Line
	5300 4150 4850 4150
Wire Wire Line
	4450 2850 4250 2850
Wire Wire Line
	4250 2850 4250 2450
Wire Wire Line
	4250 2450 5300 2450
Wire Wire Line
	5300 2450 5300 3150
Connection ~ 5300 3150
NoConn ~ 3600 3700
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5E6ACB32
P 1250 2750
F 0 "J1" H 1100 3450 50  0000 C CNN
F 1 "Conn_01x05_Male" H 1150 3200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1250 2750 50  0001 C CNN
F 3 "~" H 1250 2750 50  0001 C CNN
	1    1250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5E6AEAD0
P 1800 2300
F 0 "#PWR02" H 1800 2150 50  0001 C CNN
F 1 "+5V" H 1815 2473 50  0000 C CNN
F 2 "" H 1800 2300 50  0001 C CNN
F 3 "" H 1800 2300 50  0001 C CNN
	1    1800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2550 1800 2550
Wire Wire Line
	1800 2550 1800 2300
$Comp
L power:GND #PWR01
U 1 1 5E6AFD89
P 1750 3600
F 0 "#PWR01" H 1750 3350 50  0001 C CNN
F 1 "GND" H 1755 3427 50  0000 C CNN
F 2 "" H 1750 3600 50  0001 C CNN
F 3 "" H 1750 3600 50  0001 C CNN
	1    1750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2950 1750 2950
Wire Wire Line
	1750 2950 1750 3400
Wire Wire Line
	2800 3000 2050 3000
Wire Wire Line
	2050 3000 2050 2650
Wire Wire Line
	2050 2650 1450 2650
Wire Wire Line
	2800 3300 1950 3300
Wire Wire Line
	1950 3300 1950 2750
Wire Wire Line
	1950 2750 1450 2750
Wire Wire Line
	2800 2850 2800 2800
Wire Wire Line
	1450 2850 2800 2850
Wire Wire Line
	2800 3100 2150 3100
Wire Wire Line
	2150 3100 2150 2550
Wire Wire Line
	2150 2550 1800 2550
Connection ~ 1800 2550
Wire Wire Line
	2800 3400 1750 3400
Connection ~ 1750 3400
Wire Wire Line
	1750 3400 1750 3600
Wire Wire Line
	5250 3450 5300 3450
Connection ~ 5300 3450
Wire Wire Line
	5300 3450 5300 3150
Wire Wire Line
	3600 3500 4050 3500
Wire Wire Line
	4050 3500 4050 3750
Wire Wire Line
	4050 3750 4450 3750
Wire Wire Line
	4450 3650 4100 3650
Wire Wire Line
	4100 3650 4100 3400
Wire Wire Line
	4100 3400 3600 3400
Wire Wire Line
	3600 3300 4150 3300
Wire Wire Line
	4150 3300 4150 3550
Wire Wire Line
	4150 3550 4450 3550
Wire Wire Line
	4450 3450 4200 3450
Wire Wire Line
	4200 3450 4200 3200
Wire Wire Line
	4200 3200 3600 3200
Wire Wire Line
	4450 2950 4250 2950
Wire Wire Line
	4250 2950 4250 3100
Wire Wire Line
	4250 3100 3600 3100
Wire Wire Line
	4100 2900 4100 2750
Wire Wire Line
	4100 2750 4450 2750
Wire Wire Line
	4100 2900 3600 2900
NoConn ~ 3600 3000
NoConn ~ 3600 2800
$EndSCHEMATC
