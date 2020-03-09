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
L Device:R R3
U 1 1 5E6184D2
P 3400 3150
F 0 "R3" V 3193 3150 50  0000 C CNN
F 1 "10k" V 3284 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3330 3150 50  0001 C CNN
F 3 "~" H 3400 3150 50  0001 C CNN
	1    3400 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E61869D
P 2550 2600
F 0 "R1" H 2620 2646 50  0000 L CNN
F 1 "R01" H 2620 2555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2600 50  0001 C CNN
F 3 "~" H 2550 2600 50  0001 C CNN
	1    2550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E6187FC
P 4400 3150
F 0 "R4" V 4193 3150 50  0000 C CNN
F 1 "100k" V 4284 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4330 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 5E618ADF
P 4200 2450
F 0 "U1" H 3950 2900 50  0000 C CNN
F 1 "LM358" H 3950 2800 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 4200 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4200 2450 50  0001 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 5E61AF7B
P 4300 2450
F 0 "U1" H 4300 2600 50  0000 L CNN
F 1 "LM358" H 4300 2300 50  0000 L CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 4300 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4300 2450 50  0001 C CNN
	3    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5E61EF16
P 1650 2200
F 0 "J1" H 1750 2450 50  0000 C CNN
F 1 "PWR" H 1750 2350 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 1650 2200 50  0001 C CNN
F 3 "~" H 1650 2200 50  0001 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5E61FF31
P 5450 2450
F 0 "J2" H 5700 2050 50  0000 R CNN
F 1 "Out sensor" H 5750 2200 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5450 2450 50  0001 C CNN
F 3 "~" H 5450 2450 50  0001 C CNN
	1    5450 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 2150 4200 2000
Wire Wire Line
	4200 2000 5050 2000
Wire Wire Line
	5050 2000 5050 2350
Wire Wire Line
	5050 2350 5250 2350
Wire Wire Line
	4200 2750 4200 2950
Wire Wire Line
	4200 2950 5050 2950
Wire Wire Line
	5050 2950 5050 2550
Wire Wire Line
	5050 2550 5250 2550
Wire Wire Line
	4500 2450 4800 2450
Wire Wire Line
	4800 3150 4800 2450
Connection ~ 4800 2450
Wire Wire Line
	4800 2450 5250 2450
$Comp
L Device:R R2
U 1 1 5E63ADD7
P 3000 3150
F 0 "R2" V 2793 3150 50  0000 C CNN
F 1 "1k" V 2884 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2930 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 3150 3750 3150
Wire Wire Line
	4550 3150 4800 3150
Wire Wire Line
	3900 2550 3750 2550
Wire Wire Line
	3750 2550 3750 3150
Connection ~ 3750 3150
Wire Wire Line
	3750 3150 4250 3150
Wire Wire Line
	3250 3150 3150 3150
Wire Wire Line
	2550 2750 2550 3150
Wire Wire Line
	2550 3150 2850 3150
Wire Wire Line
	2550 2450 2550 2200
Wire Wire Line
	2550 2200 3150 2200
Wire Wire Line
	3750 2200 3750 2350
Wire Wire Line
	3750 2350 3900 2350
Wire Wire Line
	1850 2200 2550 2200
Connection ~ 2550 2200
Wire Wire Line
	1850 2300 2000 2300
Wire Wire Line
	2000 2300 2000 3150
Wire Wire Line
	2000 3150 2550 3150
Connection ~ 2550 3150
$Comp
L Device:C C1
U 1 1 5E650145
P 3450 2550
F 0 "C1" V 3198 2550 50  0000 C CNN
F 1 "104" V 3289 2550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3488 2400 50  0001 C CNN
F 3 "~" H 3450 2550 50  0001 C CNN
	1    3450 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2550 3750 2550
Connection ~ 3750 2550
Wire Wire Line
	3300 2550 3150 2550
Wire Wire Line
	3150 2550 3150 2200
Connection ~ 3150 2200
Wire Wire Line
	3150 2200 3750 2200
$EndSCHEMATC
