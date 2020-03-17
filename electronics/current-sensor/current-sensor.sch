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
P 3150 3150
F 0 "R3" V 2943 3150 50  0000 C CNN
F 1 "10k" V 3034 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3080 3150 50  0001 C CNN
F 3 "~" H 3150 3150 50  0001 C CNN
	1    3150 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E61869D
P 2600 1250
F 0 "R1" H 2670 1296 50  0000 L CNN
F 1 "R01" H 2670 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 1250 50  0001 C CNN
F 3 "~" H 2600 1250 50  0001 C CNN
	1    2600 1250
	0    -1   1    0   
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
L Connector:Conn_01x05_Male J2
U 1 1 5E61FF31
P 5450 2550
F 0 "J2" H 5650 2050 50  0000 R CNN
F 1 "Out sensor" H 5750 2200 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5450 2550 50  0001 C CNN
F 3 "~" H 5450 2550 50  0001 C CNN
	1    5450 2550
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
	4500 2450 4800 2450
Wire Wire Line
	4800 3150 4800 2450
Connection ~ 4800 2450
Wire Wire Line
	4800 2450 5250 2450
$Comp
L Device:R R2
U 1 1 5E63ADD7
P 2750 3150
F 0 "R2" V 2543 3150 50  0000 C CNN
F 1 "1k" V 2634 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2680 3150 50  0001 C CNN
F 3 "~" H 2750 3150 50  0001 C CNN
	1    2750 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3150 4800 3150
Wire Wire Line
	3900 2550 3750 2550
Wire Wire Line
	3750 2550 3750 2800
Wire Wire Line
	3750 3150 4250 3150
$Comp
L Device:C C1
U 1 1 5E650145
P 3450 2800
F 0 "C1" V 3198 2800 50  0000 C CNN
F 1 "104" V 3289 2800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3488 2650 50  0001 C CNN
F 3 "~" H 3450 2800 50  0001 C CNN
	1    3450 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2950 5050 2950
Wire Wire Line
	4200 2750 4200 2950
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5E61EF16
P 4300 950
F 0 "J1" H 4400 1200 50  0000 C CNN
F 1 "PWRIN" H 4400 1100 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 4300 950 50  0001 C CNN
F 3 "~" H 4300 950 50  0001 C CNN
	1    4300 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 2950 5050 2650
Wire Wire Line
	5050 2650 5250 2650
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E7269C0
P 550 1050
F 0 "J3" H 650 1300 50  0000 C CNN
F 1 "PWROUT" H 650 1200 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_2-G-5.08_1x02_P5.08mm_Vertical" H 550 1050 50  0001 C CNN
F 3 "~" H 550 1050 50  0001 C CNN
	1    550  1050
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 950  2650 950 
Wire Wire Line
	2100 1050 750  1050
Wire Wire Line
	4100 1050 3750 1050
Wire Wire Line
	3750 1050 3750 1250
Wire Wire Line
	2100 1050 2100 1250
Wire Wire Line
	2100 1250 2300 1250
Wire Wire Line
	2750 1250 2850 1250
Wire Wire Line
	2850 2350 2850 1250
Connection ~ 2850 1250
Wire Wire Line
	2850 1250 3550 1250
Wire Wire Line
	2300 3150 2300 1250
Connection ~ 2300 1250
Wire Wire Line
	2300 1250 2450 1250
Wire Wire Line
	2300 3150 2600 3150
Wire Wire Line
	2900 3150 3000 3150
Wire Wire Line
	3300 3150 3750 3150
Connection ~ 3750 3150
Wire Wire Line
	2850 2350 3100 2350
Wire Wire Line
	3300 2800 3100 2800
Wire Wire Line
	3100 2800 3100 2350
Connection ~ 3100 2350
Wire Wire Line
	3100 2350 3900 2350
Wire Wire Line
	3750 2800 3600 2800
Connection ~ 3750 2800
Wire Wire Line
	3750 2800 3750 3150
Wire Wire Line
	2300 3150 2300 3350
Wire Wire Line
	2300 3350 5250 3350
Wire Wire Line
	5250 3350 5250 2750
Connection ~ 2300 3150
$Comp
L Device:R R5
U 1 1 5E767EE6
P 3300 700
F 0 "R5" V 3093 700 50  0000 C CNN
F 1 "10k" V 3184 700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3230 700 50  0001 C CNN
F 3 "~" H 3300 700 50  0001 C CNN
	1    3300 700 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E76A496
P 3550 950
F 0 "R6" V 3343 950 50  0000 C CNN
F 1 "1k" V 3434 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3480 950 50  0001 C CNN
F 3 "~" H 3550 950 50  0001 C CNN
	1    3550 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 1100 3550 1250
Connection ~ 3550 1250
Wire Wire Line
	3550 1250 3750 1250
Wire Wire Line
	3150 700  2650 700 
Wire Wire Line
	2650 700  2650 950 
Connection ~ 2650 950 
Wire Wire Line
	2650 950  750  950 
Wire Wire Line
	3450 700  3550 700 
Wire Wire Line
	3550 700  3550 800 
Text GLabel 3700 700  2    50   Input ~ 0
VSENS
Wire Wire Line
	3550 700  3700 700 
Connection ~ 3550 700 
Text GLabel 5150 2550 0    50   Input ~ 0
VSENS
Wire Wire Line
	5150 2550 5250 2550
$EndSCHEMATC
