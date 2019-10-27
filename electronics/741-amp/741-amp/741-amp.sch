EESchema Schematic File Version 4
LIBS:741-amp-cache
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
L Connector:AudioJack2 J1
U 1 1 5DAB7F1A
P 1600 3850
F 0 "J1" H 1632 4175 50  0000 C CNN
F 1 "AudioJack2" H 1632 4084 50  0000 C CNN
F 2 "usb_micro:js-211" H 1600 3850 50  0001 C CNN
F 3 "~" H 1600 3850 50  0001 C CNN
	1    1600 3850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM741 U1
U 1 1 5DAB8580
P 3650 3750
F 0 "U1" H 3800 4100 50  0000 L CNN
F 1 "LM741" H 3750 4000 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3700 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 3800 3900 50  0001 C CNN
	1    3650 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DAB8D4D
P 3800 4400
F 0 "R2" V 3593 4400 50  0000 C CNN
F 1 "10k" V 3684 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 4400 50  0001 C CNN
F 3 "~" H 3800 4400 50  0001 C CNN
	1    3800 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5DABBAD7
P 2850 3850
F 0 "R1" V 2643 3850 50  0000 C CNN
F 1 "1.8k" V 2734 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2780 3850 50  0001 C CNN
F 3 "~" H 2850 3850 50  0001 C CNN
	1    2850 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3750 3950 3750
Wire Wire Line
	3200 3850 3350 3850
Wire Wire Line
	3000 3850 3200 3850
Connection ~ 3200 3850
$Comp
L Device:CP C1
U 1 1 5DABE660
P 2400 3850
F 0 "C1" V 2655 3850 50  0000 C CNN
F 1 "10uF" V 2564 3850 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2438 3700 50  0001 C CNN
F 3 "~" H 2400 3850 50  0001 C CNN
	1    2400 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 3850 2700 3850
Wire Wire Line
	1800 3850 2250 3850
$Comp
L Device:CP C2
U 1 1 5DAC0774
P 2800 3400
F 0 "C2" V 2545 3400 50  0000 C CNN
F 1 "10uF" V 2636 3400 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2838 3250 50  0001 C CNN
F 3 "~" H 2800 3400 50  0001 C CNN
	1    2800 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3400 3200 3400
Wire Wire Line
	3200 3400 3200 3650
Wire Wire Line
	3200 3650 3350 3650
Wire Wire Line
	1800 3750 2150 3750
Wire Wire Line
	2150 3750 2150 3400
Wire Wire Line
	2150 3400 2650 3400
$Comp
L power:GND #PWR01
U 1 1 5DAC2590
P 2000 3450
F 0 "#PWR01" H 2000 3200 50  0001 C CNN
F 1 "GND" H 2005 3277 50  0000 C CNN
F 2 "" H 2000 3450 50  0001 C CNN
F 3 "" H 2000 3450 50  0001 C CNN
	1    2000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3450 2000 3400
Wire Wire Line
	2000 3400 2150 3400
Connection ~ 2150 3400
$Comp
L power:GND #PWR03
U 1 1 5DAC3835
P 3550 4150
F 0 "#PWR03" H 3550 3900 50  0001 C CNN
F 1 "GND" H 3555 3977 50  0000 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4050 3550 4150
Wire Wire Line
	3200 4400 3650 4400
Wire Wire Line
	3200 3850 3200 4400
Wire Wire Line
	3950 4400 4250 4400
Wire Wire Line
	4250 3750 4250 4400
$Comp
L power:+5V #PWR02
U 1 1 5DAC692C
P 3550 3250
F 0 "#PWR02" H 3550 3100 50  0001 C CNN
F 1 "+5V" H 3565 3423 50  0000 C CNN
F 2 "" H 3550 3250 50  0001 C CNN
F 3 "" H 3550 3250 50  0001 C CNN
	1    3550 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3250 3550 3450
$Comp
L Device:CP C3
U 1 1 5DAC83BF
P 4600 3750
F 0 "C3" V 4855 3750 50  0000 C CNN
F 1 "100uF" V 4764 3750 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4638 3600 50  0001 C CNN
F 3 "~" H 4600 3750 50  0001 C CNN
	1    4600 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3750 4450 3750
Connection ~ 4250 3750
$Comp
L Amplifier_Audio:LM386 U2
U 1 1 5DAC9C97
P 6700 3700
F 0 "U2" H 7044 3746 50  0000 L CNN
F 1 "LM386" H 7044 3655 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 6800 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 6900 3900 50  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5DACBCF7
P 5500 3650
F 0 "RV1" V 5385 3650 50  0000 C CNN
F 1 "5k" V 5294 3650 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_T-16H_Single_Horizontal" H 5500 3650 50  0001 C CNN
F 3 "~" H 5500 3650 50  0001 C CNN
	1    5500 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3750 5000 3750
Wire Wire Line
	5000 3750 5000 3650
Wire Wire Line
	5000 3650 5350 3650
Wire Wire Line
	5500 3500 5500 3400
Wire Wire Line
	5500 3400 6200 3400
Wire Wire Line
	6200 3400 6200 3600
Wire Wire Line
	6200 3600 6400 3600
$Comp
L power:GND #PWR04
U 1 1 5DAD001C
P 5800 3700
F 0 "#PWR04" H 5800 3450 50  0001 C CNN
F 1 "GND" H 5805 3527 50  0000 C CNN
F 2 "" H 5800 3700 50  0001 C CNN
F 3 "" H 5800 3700 50  0001 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3650 5800 3650
Wire Wire Line
	5800 3650 5800 3700
Wire Wire Line
	5800 3650 6150 3650
Wire Wire Line
	6150 3650 6150 3800
Wire Wire Line
	6150 3800 6400 3800
Connection ~ 5800 3650
$Comp
L Device:C C5
U 1 1 5DAD1BB3
P 6900 3200
F 0 "C5" H 7015 3246 50  0000 L CNN
F 1 "100nF" H 7015 3155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6938 3050 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5DAD3462
P 6600 2700
F 0 "#PWR05" H 6600 2550 50  0001 C CNN
F 1 "+5V" H 6615 2873 50  0000 C CNN
F 2 "" H 6600 2700 50  0001 C CNN
F 3 "" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DAD5D2D
P 6750 2950
F 0 "C4" V 6498 2950 50  0000 C CNN
F 1 "100nF" V 6589 2950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6788 2800 50  0001 C CNN
F 3 "~" H 6750 2950 50  0001 C CNN
	1    6750 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 2700 6600 2950
Wire Wire Line
	6600 2950 6600 3400
Connection ~ 6600 2950
Wire Wire Line
	6900 2950 6900 3050
Wire Wire Line
	6700 3400 6700 3350
Wire Wire Line
	6700 3350 6900 3350
$Comp
L power:GND #PWR07
U 1 1 5DAD9BDD
P 7350 3100
F 0 "#PWR07" H 7350 2850 50  0001 C CNN
F 1 "GND" H 7355 2927 50  0000 C CNN
F 2 "" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2950 7350 2950
Wire Wire Line
	7350 2950 7350 3100
Connection ~ 6900 2950
$Comp
L power:GND #PWR06
U 1 1 5DADB974
P 6600 4300
F 0 "#PWR06" H 6600 4050 50  0001 C CNN
F 1 "GND" H 6605 4127 50  0000 C CNN
F 2 "" H 6600 4300 50  0001 C CNN
F 3 "" H 6600 4300 50  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4000 6600 4300
$Comp
L Device:R_POT RV2
U 1 1 5DADC66E
P 7450 4500
F 0 "RV2" V 7335 4500 50  0000 C CNN
F 1 "100k" V 7244 4500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_T-16H_Single_Horizontal" H 7450 4500 50  0001 C CNN
F 3 "~" H 7450 4500 50  0001 C CNN
	1    7450 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C6
U 1 1 5DADE4E6
P 7000 4500
F 0 "C6" V 7255 4500 50  0000 C CNN
F 1 "10uF" V 7164 4500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7038 4350 50  0001 C CNN
F 3 "~" H 7000 4500 50  0001 C CNN
	1    7000 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 4000 6700 4500
Wire Wire Line
	6700 4500 6850 4500
Wire Wire Line
	7150 4500 7300 4500
Wire Wire Line
	6800 4000 6800 4150
Wire Wire Line
	6800 4150 7750 4150
Wire Wire Line
	7750 4500 7600 4500
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5DAE0F96
P 8100 4350
F 0 "J2" H 8072 4232 50  0000 R CNN
F 1 "Gain Jmpr" H 8072 4323 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8100 4350 50  0001 C CNN
F 3 "~" H 8100 4350 50  0001 C CNN
	1    8100 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 4150 7750 4250
$Comp
L Device:CP C8
U 1 1 5DAE773A
P 7850 3700
F 0 "C8" V 8105 3700 50  0000 C CNN
F 1 "470uF" V 8014 3700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7888 3550 50  0001 C CNN
F 3 "~" H 7850 3700 50  0001 C CNN
	1    7850 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 3700 7650 3700
$Comp
L Device:C C7
U 1 1 5DAE8A56
P 7650 3250
F 0 "C7" H 7765 3296 50  0000 L CNN
F 1 "47nF" H 7765 3205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7688 3100 50  0001 C CNN
F 3 "~" H 7650 3250 50  0001 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3400 7650 3700
Connection ~ 7650 3700
Wire Wire Line
	7650 3700 7700 3700
Wire Wire Line
	7350 2950 7650 2950
Wire Wire Line
	7650 2950 7650 3100
Connection ~ 7350 2950
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DB02A4C
P 9000 3800
F 0 "J3" H 8972 3682 50  0000 R CNN
F 1 "Conn_01x02_Male" H 8972 3773 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9000 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
	1    9000 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 3700 8800 3700
$Comp
L power:GND #PWR08
U 1 1 5DB06465
P 8650 3950
F 0 "#PWR08" H 8650 3700 50  0001 C CNN
F 1 "GND" H 8655 3777 50  0000 C CNN
F 2 "" H 8650 3950 50  0001 C CNN
F 3 "" H 8650 3950 50  0001 C CNN
	1    8650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3950 8650 3800
Wire Wire Line
	8650 3800 8800 3800
NoConn ~ 3650 4050
NoConn ~ 3750 4050
$Comp
L Connector:USB_B_Mini J4
U 1 1 5DB0D9E9
P 1750 2350
F 0 "J4" H 1807 2817 50  0000 C CNN
F 1 "USB_B_Mini" H 1807 2726 50  0000 C CNN
F 2 "usb_micro:USB_Micro_1_27x5" H 1900 2300 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5DB102C4
P 2900 2000
F 0 "#PWR010" H 2900 1850 50  0001 C CNN
F 1 "+5V" H 2915 2173 50  0000 C CNN
F 2 "" H 2900 2000 50  0001 C CNN
F 3 "" H 2900 2000 50  0001 C CNN
	1    2900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DB10801
P 1750 2950
F 0 "#PWR09" H 1750 2700 50  0001 C CNN
F 1 "GND" H 1755 2777 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2750 1750 2900
NoConn ~ 2050 2350
NoConn ~ 2050 2450
NoConn ~ 2050 2550
NoConn ~ 1650 2750
$Comp
L Device:CP C9
U 1 1 5DB17660
P 2450 2550
F 0 "C9" H 2568 2596 50  0000 L CNN
F 1 "470uF" H 2568 2505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2488 2400 50  0001 C CNN
F 3 "~" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5DB18D51
P 2900 2550
F 0 "C10" H 3015 2596 50  0000 L CNN
F 1 "1uF" H 3015 2505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2938 2400 50  0001 C CNN
F 3 "~" H 2900 2550 50  0001 C CNN
	1    2900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2900 2450 2900
Wire Wire Line
	2450 2900 2450 2700
Connection ~ 1750 2900
Wire Wire Line
	1750 2900 1750 2950
Wire Wire Line
	2900 2150 2900 2000
Wire Wire Line
	2050 2150 2450 2150
Wire Wire Line
	2900 2400 2900 2150
Connection ~ 2900 2150
Wire Wire Line
	2450 2400 2450 2150
Connection ~ 2450 2150
Wire Wire Line
	2450 2150 2900 2150
Wire Wire Line
	2450 2900 2900 2900
Wire Wire Line
	2900 2900 2900 2700
Connection ~ 2450 2900
Wire Wire Line
	7750 4250 7900 4250
Wire Wire Line
	7750 4500 7750 4350
Wire Wire Line
	7750 4350 7900 4350
NoConn ~ 7900 4450
$EndSCHEMATC
