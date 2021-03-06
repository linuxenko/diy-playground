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
L 4xxx:4047 U1
U 1 1 5DA74DB3
P 3950 3050
F 0 "U1" H 4100 2750 50  0000 C CNN
F 1 "4047" H 4150 2600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3950 3050 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/CD/CD4047BC.pdf" H 3950 3050 50  0001 C CNN
	1    3950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5DA75454
P 2800 3550
F 0 "C1" H 2918 3596 50  0000 L CNN
F 1 "10uF" H 2918 3505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2838 3400 50  0001 C CNN
F 3 "~" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DA759E6
P 4900 4000
F 0 "C2" V 4648 4000 50  0000 C CNN
F 1 "1uF" V 4739 4000 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L12.0mm_D6.5mm_P15.00mm_Horizontal" H 4938 3850 50  0001 C CNN
F 3 "~" H 4900 4000 50  0001 C CNN
	1    4900 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5DA75D01
P 4900 4650
F 0 "C3" V 4648 4650 50  0000 C CNN
F 1 "1uF" V 4739 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L12.0mm_D6.5mm_P15.00mm_Horizontal" H 4938 4500 50  0001 C CNN
F 3 "~" H 4900 4650 50  0001 C CNN
	1    4900 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5DA76077
P 5000 2550
F 0 "RV2" H 4930 2596 50  0000 R CNN
F 1 "5k" H 4930 2505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_T-16H_Single_Horizontal" H 5000 2550 50  0001 C CNN
F 3 "~" H 5000 2550 50  0001 C CNN
	1    5000 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5DA763E3
P 2500 3750
F 0 "RV1" H 2430 3796 50  0000 R CNN
F 1 "5k" H 2430 3705 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_T-16H_Single_Horizontal" H 2500 3750 50  0001 C CNN
F 3 "~" H 2500 3750 50  0001 C CNN
	1    2500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DA76952
P 5300 3700
F 0 "R1" H 5370 3746 50  0000 L CNN
F 1 "1.8k" H 5370 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 3700 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DA776A8
P 5300 4350
F 0 "R2" H 5370 4396 50  0000 L CNN
F 1 "1.8k" H 5370 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 4350 50  0001 C CNN
F 3 "~" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5DA77EB2
P 3950 1650
F 0 "#PWR02" H 3950 1500 50  0001 C CNN
F 1 "+5V" H 3965 1823 50  0000 C CNN
F 2 "" H 3950 1650 50  0001 C CNN
F 3 "" H 3950 1650 50  0001 C CNN
	1    3950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DA7886D
P 3950 4450
F 0 "#PWR03" H 3950 4200 50  0001 C CNN
F 1 "GND" H 3955 4277 50  0000 C CNN
F 2 "" H 3950 4450 50  0001 C CNN
F 3 "" H 3950 4450 50  0001 C CNN
	1    3950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3550 3200 3550
Wire Wire Line
	3200 3550 3200 3400
Wire Wire Line
	3200 3400 2800 3400
Wire Wire Line
	3350 3750 2800 3750
Wire Wire Line
	2800 3750 2800 3700
Wire Wire Line
	2650 3750 2800 3750
Connection ~ 2800 3750
Wire Wire Line
	2500 3600 2500 3250
Wire Wire Line
	2500 3250 3050 3250
Wire Wire Line
	3050 3250 3050 3350
Wire Wire Line
	3050 3350 3350 3350
Wire Wire Line
	3950 1950 3950 1850
Wire Wire Line
	3350 2450 3150 2450
Wire Wire Line
	3150 2450 3150 2350
Wire Wire Line
	3150 2350 3350 2350
Wire Wire Line
	3950 1850 3150 1850
Wire Wire Line
	3150 1850 3150 2350
Connection ~ 3950 1850
Wire Wire Line
	3950 1850 3950 1650
Connection ~ 3150 2350
Wire Wire Line
	3350 2650 3150 2650
Wire Wire Line
	3150 2650 3150 2750
Wire Wire Line
	3150 2750 3350 2750
Wire Wire Line
	3350 3150 3150 3150
Wire Wire Line
	3150 3150 3150 2950
Connection ~ 3150 2750
Wire Wire Line
	3350 2950 3150 2950
Connection ~ 3150 2950
Wire Wire Line
	3150 2950 3150 2900
$Comp
L power:GND #PWR01
U 1 1 5DA8ED36
P 2800 3000
F 0 "#PWR01" H 2800 2750 50  0001 C CNN
F 1 "GND" H 2805 2827 50  0000 C CNN
F 2 "" H 2800 3000 50  0001 C CNN
F 3 "" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3000 2800 2900
Wire Wire Line
	2800 2900 3150 2900
Connection ~ 3150 2900
Wire Wire Line
	3150 2900 3150 2750
Wire Wire Line
	3950 4150 3950 4300
Wire Wire Line
	4750 4650 4750 4300
Wire Wire Line
	3950 4300 4500 4300
Connection ~ 3950 4300
Wire Wire Line
	3950 4300 3950 4450
Wire Wire Line
	4750 4000 4750 4300
Connection ~ 4750 4300
Wire Wire Line
	4550 2350 5000 2350
Wire Wire Line
	5000 2350 5000 2400
Wire Wire Line
	5000 2700 5000 3150
Wire Wire Line
	5000 3150 4500 3150
Wire Wire Line
	4500 3150 4500 4300
Connection ~ 4500 4300
Wire Wire Line
	4500 4300 4750 4300
Wire Wire Line
	5050 4000 5300 4000
Wire Wire Line
	5300 4000 5300 3850
Wire Wire Line
	5300 4000 5300 4200
Connection ~ 5300 4000
Wire Wire Line
	5050 4650 5300 4650
Wire Wire Line
	5300 4650 5300 4500
Wire Wire Line
	5300 2550 5300 3550
NoConn ~ 4550 2750
NoConn ~ 4550 2950
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5DAA269F
P 6400 2500
F 0 "J1" H 6500 1900 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6550 2000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6400 2500 50  0001 C CNN
F 3 "~" H 6400 2500 50  0001 C CNN
	1    6400 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 2550 5300 2550
Wire Wire Line
	5300 2550 6000 2550
Wire Wire Line
	6000 2550 6000 2200
Wire Wire Line
	6000 2200 6200 2200
Connection ~ 5300 2550
Wire Wire Line
	5000 2350 6100 2350
Wire Wire Line
	6100 2350 6100 2300
Wire Wire Line
	6100 2300 6200 2300
Connection ~ 5000 2350
Wire Wire Line
	5300 4000 5850 4000
Wire Wire Line
	5850 4000 5850 2600
Wire Wire Line
	5850 2600 6050 2600
Wire Wire Line
	6050 2600 6050 2400
Wire Wire Line
	6050 2400 6200 2400
Wire Wire Line
	5300 4650 6000 4650
Wire Wire Line
	6000 4650 6000 2700
Wire Wire Line
	6000 2700 6100 2700
Wire Wire Line
	6100 2700 6100 2500
Wire Wire Line
	6100 2500 6200 2500
Connection ~ 5300 4650
Wire Wire Line
	6200 2600 6150 2600
$Comp
L power:GND #PWR04
U 1 1 5DAAC2A0
P 6250 2850
F 0 "#PWR04" H 6250 2600 50  0001 C CNN
F 1 "GND" H 6255 2677 50  0000 C CNN
F 2 "" H 6250 2850 50  0001 C CNN
F 3 "" H 6250 2850 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 6200 2800
Wire Wire Line
	6200 2800 6250 2800
Wire Wire Line
	6250 2800 6250 2850
Wire Wire Line
	6150 2600 6150 2800
Wire Wire Line
	6150 2800 6200 2800
Connection ~ 6200 2800
$Comp
L Connector:USB_OTG J2
U 1 1 5DABF365
P 4900 1250
F 0 "J2" H 4670 1147 50  0000 R CNN
F 1 "USB_OTG" H 4670 1238 50  0000 R CNN
F 2 "usb_micro:USB_Micro_1_27x5" H 5050 1200 50  0001 C CNN
F 3 " ~" H 5050 1200 50  0001 C CNN
	1    4900 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 1850 4350 1850
Wire Wire Line
	4350 1850 4350 1450
Wire Wire Line
	4350 1450 4600 1450
$Comp
L power:GND #PWR05
U 1 1 5DAC3CDA
P 4750 650
F 0 "#PWR05" H 4750 400 50  0001 C CNN
F 1 "GND" H 4755 477 50  0000 C CNN
F 2 "" H 4750 650 50  0001 C CNN
F 3 "" H 4750 650 50  0001 C CNN
	1    4750 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 650  4900 650 
Wire Wire Line
	4900 650  4900 850 
NoConn ~ 5000 850 
NoConn ~ 4600 1050
NoConn ~ 4600 1150
NoConn ~ 4600 1250
$EndSCHEMATC
