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
L Connector:Screw_Terminal_01x02 J1
U 1 1 5E4ED2DF
P 1900 1950
F 0 "J1" H 1818 1625 50  0000 C CNN
F 1 "Power" H 1818 1716 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1900 1950 50  0001 C CNN
F 3 "~" H 1900 1950 50  0001 C CNN
	1    1900 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5E4ED878
P 2650 1850
F 0 "R1" V 2443 1850 50  0000 C CNN
F 1 "1.7k" V 2534 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2580 1850 50  0001 C CNN
F 3 "~" H 2650 1850 50  0001 C CNN
	1    2650 1850
	0    1    1    0   
$EndComp
$Comp
L Reference_Voltage:TL431DBZ U2
U 1 1 5E4EE360
P 3100 2200
F 0 "U2" V 3146 2130 50  0000 R CNN
F 1 "TL431DBZ" V 3055 2130 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 1950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 3100 2200 50  0001 C CIN
	1    3100 2200
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 5E4EED92
P 5050 2350
F 0 "U1" H 5050 2717 50  0000 C CNN
F 1 "LM358" H 5050 2626 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5050 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 5E4F2360
P 2500 2300
F 0 "U1" H 2458 2346 50  0000 L CNN
F 1 "LM358" H 2458 2255 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 2500 2300 50  0001 C CNN
	3    2500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1850 3000 2200
Wire Wire Line
	3100 2100 3100 1850
Wire Wire Line
	3100 1850 3000 1850
Connection ~ 3000 1850
Wire Wire Line
	2800 1850 3000 1850
$Comp
L Device:R R2
U 1 1 5E50C369
P 6000 2600
F 0 "R2" H 5930 2554 50  0000 R CNN
F 1 "1k" H 5930 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5930 2600 50  0001 C CNN
F 3 "~" H 6000 2600 50  0001 C CNN
	1    6000 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E512609
P 3100 2800
F 0 "#PWR0101" H 3100 2550 50  0001 C CNN
F 1 "GND" H 3105 2627 50  0000 C CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1850 2250 1850
Wire Wire Line
	3100 2300 3100 2800
$Comp
L power:GND #PWR0102
U 1 1 5E516E8E
P 2100 2800
F 0 "#PWR0102" H 2100 2550 50  0001 C CNN
F 1 "GND" H 2105 2627 50  0000 C CNN
F 2 "" H 2100 2800 50  0001 C CNN
F 3 "" H 2100 2800 50  0001 C CNN
	1    2100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 2100 2800
Wire Wire Line
	2400 1850 2400 2000
Connection ~ 2400 1850
Wire Wire Line
	2400 1850 2500 1850
$Comp
L power:GND #PWR0103
U 1 1 5E530EA5
P 2400 2800
F 0 "#PWR0103" H 2400 2550 50  0001 C CNN
F 1 "GND" H 2405 2627 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2600 2400 2800
NoConn ~ 2750 3900
NoConn ~ 2750 4100
NoConn ~ 3350 4000
$Comp
L Device:R_POT RV1
U 1 1 5E53876C
P 3850 2250
F 0 "RV1" H 3781 2296 50  0000 R CNN
F 1 "R_POT" H 3781 2205 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-V_Vertical" H 3850 2250 50  0001 C CNN
F 3 "~" H 3850 2250 50  0001 C CNN
	1    3850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1850 3850 1850
Wire Wire Line
	3850 1850 3850 2100
Connection ~ 3100 1850
$Comp
L power:GND #PWR0104
U 1 1 5E53CA2A
P 3850 2800
F 0 "#PWR0104" H 3850 2550 50  0001 C CNN
F 1 "GND" H 3855 2627 50  0000 C CNN
F 2 "" H 3850 2800 50  0001 C CNN
F 3 "" H 3850 2800 50  0001 C CNN
	1    3850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2400 3850 2800
Wire Wire Line
	4750 2250 4000 2250
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 5E4F1581
P 3050 4000
F 0 "U1" H 3050 4367 50  0000 C CNN
F 1 "LM358" H 3050 4276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3050 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3050 4000 50  0001 C CNN
	2    3050 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q1
U 1 1 5E54368E
P 6300 2100
F 0 "Q1" H 6504 2146 50  0000 L CNN
F 1 "IRLZ44N" H 6504 2055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 2025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 6300 2100 50  0001 L CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E54FA8C
P 6400 2600
F 0 "R3" H 6330 2554 50  0000 R CNN
F 1 "2" H 6330 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_Power_L20.0mm_W6.4mm_P22.40mm" V 6330 2600 50  0001 C CNN
F 3 "~" H 6400 2600 50  0001 C CNN
	1    6400 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2100 5550 2350
Wire Wire Line
	5550 2350 5350 2350
Wire Wire Line
	5550 2100 6000 2100
$Comp
L power:GND #PWR0105
U 1 1 5E5637E3
P 6000 2900
F 0 "#PWR0105" H 6000 2650 50  0001 C CNN
F 1 "GND" H 6005 2727 50  0000 C CNN
F 2 "" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2100 6000 2450
Connection ~ 6000 2100
Wire Wire Line
	6000 2100 6100 2100
Wire Wire Line
	6000 2750 6000 2900
$Comp
L power:GND #PWR0106
U 1 1 5E568675
P 6400 2900
F 0 "#PWR0106" H 6400 2650 50  0001 C CNN
F 1 "GND" H 6405 2727 50  0000 C CNN
F 2 "" H 6400 2900 50  0001 C CNN
F 3 "" H 6400 2900 50  0001 C CNN
	1    6400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2750 6400 2900
Wire Wire Line
	6400 2300 6400 2400
Wire Wire Line
	4750 2450 4600 2450
Wire Wire Line
	4600 2450 4600 3200
Wire Wire Line
	4600 3200 6750 3200
Wire Wire Line
	6750 3200 6750 2400
Wire Wire Line
	6750 2400 6400 2400
Connection ~ 6400 2400
Wire Wire Line
	6400 2400 6400 2450
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5E56A6FC
P 7400 1650
F 0 "J2" H 7400 1900 50  0000 L CNN
F 1 "Output" H 7350 1800 50  0000 L CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 7400 1650 50  0001 C CNN
F 3 "~" H 7400 1650 50  0001 C CNN
	1    7400 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 1900 6400 1650
Wire Wire Line
	6400 1650 7200 1650
Wire Wire Line
	7200 1550 2250 1550
Wire Wire Line
	2250 1550 2250 1850
Connection ~ 2250 1850
Wire Wire Line
	2250 1850 2400 1850
$EndSCHEMATC
