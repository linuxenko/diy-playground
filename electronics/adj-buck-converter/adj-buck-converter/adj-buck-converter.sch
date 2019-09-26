EESchema Schematic File Version 4
LIBS:abc-lcd-cache
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
L Regulator_Switching:LM2596S-ADJ U?
U 1 1 5DA2FC6C
P 2650 4000
F 0 "U?" H 2650 4367 50  0000 C CNN
F 1 "LM2596S-ADJ" H 2650 4276 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2700 3750 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 2650 4000 50  0001 C CNN
	1    2650 4000
	1    0    0    -1  
$EndComp
Text GLabel 900  3900 0    50   Input ~ 0
v24
Wire Wire Line
	2150 3900 1450 3900
$Comp
L power:GND #PWR?
U 1 1 5DA34443
P 2650 4700
F 0 "#PWR?" H 2650 4450 50  0001 C CNN
F 1 "GND" H 2655 4527 50  0000 C CNN
F 2 "" H 2650 4700 50  0001 C CNN
F 3 "" H 2650 4700 50  0001 C CNN
	1    2650 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DA3875B
P 1450 4200
F 0 "C?" H 1565 4246 50  0000 L CNN
F 1 "450uF" H 1565 4155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1450 4200 50  0001 C CNN
F 3 "~" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3900 1450 4050
Connection ~ 1450 3900
Wire Wire Line
	1450 3900 900  3900
Wire Wire Line
	1450 4350 1450 4550
Wire Wire Line
	1450 4550 2150 4550
Wire Wire Line
	2650 4300 2650 4550
Connection ~ 2650 4550
Wire Wire Line
	2650 4550 2650 4700
$Comp
L Device:D_Schottky D?
U 1 1 5DA40C8D
P 3500 4250
F 0 "D?" V 3454 4329 50  0000 L CNN
F 1 "D_Schottky" V 3545 4329 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 3500 4250 50  0001 C CNN
F 3 "~" H 3500 4250 50  0001 C CNN
	1    3500 4250
	0    1    1    0   
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 5DA412EC
P 4000 4100
F 0 "L?" H 4000 4315 50  0000 C CNN
F 1 "INDUCTOR" H 4000 4224 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Horizontal_D6.5mm_P10.00mm_Diameter7-5mm_Amidon-T25" H 4000 4100 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4100 3500 4100
Wire Wire Line
	3750 4100 3500 4100
Connection ~ 3500 4100
Wire Wire Line
	3500 4400 3500 4550
$Comp
L Device:CP1 C?
U 1 1 5DA4E6A4
P 4350 4250
F 0 "C?" H 4465 4296 50  0000 L CNN
F 1 "22uF" H 4465 4205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4350 4250 50  0001 C CNN
F 3 "~" H 4350 4250 50  0001 C CNN
	1    4350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DA4F282
P 5150 4250
F 0 "C?" H 5265 4296 50  0000 L CNN
F 1 "100nF" H 5265 4205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5188 4100 50  0001 C CNN
F 3 "~" H 5150 4250 50  0001 C CNN
	1    5150 4250
	1    0    0    -1  
$EndComp
Connection ~ 4350 4100
$Comp
L Device:R_POT RV?
U 1 1 5DA5949F
P 6400 4350
F 0 "RV?" V 6285 4350 50  0000 C CNN
F 1 "R_POT" V 6194 4350 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PC-16_Single_Horizontal" H 6400 4350 50  0001 C CNN
F 3 "~" H 6400 4350 50  0001 C CNN
	1    6400 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 3900 3400 3900
Wire Wire Line
	3400 3900 3400 3600
Wire Wire Line
	4350 4400 4350 4550
Wire Wire Line
	5150 4400 5150 4550
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5DA73191
P 7250 4100
F 0 "J?" H 7168 3775 50  0000 C CNN
F 1 "ADJ_OUTPUT" H 6950 4350 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_3-G-5.08_1x03_P5.08mm_Vertical" H 7250 4100 50  0001 C CNN
F 3 "~" H 7250 4100 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4550 7050 4200
NoConn ~ 7050 4000
Wire Notes Line
	600  3000 7650 3000
Wire Notes Line
	7650 3000 7650 5150
Wire Notes Line
	7650 5150 600  5150
Wire Notes Line
	600  5150 600  3000
Text Notes 1400 5000 0    50   ~ 0
Adjustable power source\n
$Comp
L Switch:SW_Push SW?
U 1 1 5DC385FF
P 8300 9650
F 0 "SW?" H 8300 9935 50  0000 C CNN
F 1 "SW_Push" H 8300 9844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CW_GPTS203211B" H 8300 9850 50  0001 C CNN
F 3 "~" H 8300 9850 50  0001 C CNN
	1    8300 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 9650 8050 9650
$Comp
L Device:R R?
U 1 1 5DC49BB9
P 8050 9850
F 0 "R?" H 7980 9804 50  0000 R CNN
F 1 "10K" H 7980 9895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 9850 50  0001 C CNN
F 3 "~" H 8050 9850 50  0001 C CNN
	1    8050 9850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 9700 8050 9650
Connection ~ 8050 9650
Wire Wire Line
	8050 9650 8100 9650
$Comp
L power:GND #PWR?
U 1 1 5DC52787
P 8950 9500
F 0 "#PWR?" H 8950 9250 50  0001 C CNN
F 1 "GND" H 8955 9327 50  0000 C CNN
F 2 "" H 8950 9500 50  0001 C CNN
F 3 "" H 8950 9500 50  0001 C CNN
	1    8950 9500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 10100 8050 10100
Wire Wire Line
	8050 10100 8050 10000
$Comp
L power:+5V #PWR?
U 1 1 5DC5C560
P 8350 10100
F 0 "#PWR?" H 8350 9950 50  0001 C CNN
F 1 "+5V" H 8365 10273 50  0000 C CNN
F 2 "" H 8350 10100 50  0001 C CNN
F 3 "" H 8350 10100 50  0001 C CNN
	1    8350 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 9650 8950 9650
Wire Wire Line
	8950 9650 8950 9500
Wire Notes Line
	9500 9000 7000 9000
Wire Notes Line
	7000 9000 7000 10500
Wire Notes Line
	7000 10500 9500 10500
Wire Notes Line
	9500 10500 9500 9000
Text GLabel 7800 9650 0    50   Input ~ 0
BTN_SOURCE
Wire Wire Line
	6400 4200 6400 4100
Connection ~ 6400 4100
Wire Wire Line
	6400 4550 6400 4500
Wire Wire Line
	6150 3600 6150 4350
Wire Wire Line
	6150 4350 6250 4350
Connection ~ 6400 4550
Connection ~ 4350 4550
Text Notes 12050 10150 0    50   ~ 0
I was using much larger capacitors and additional resitors for filtering 
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5D92CD80
P 2150 1400
F 0 "J?" H 2068 1075 50  0000 C CNN
F 1 "24v-INPUT" H 2150 1850 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_3-G-5.08_1x03_P5.08mm_Vertical" H 2150 1400 50  0001 C CNN
F 3 "~" H 2150 1400 50  0001 C CNN
	1    2150 1400
	-1   0    0    1   
$EndComp
Text GLabel 2650 1400 2    50   Input ~ 0
v24
Wire Notes Line
	600  600  4900 600 
Wire Notes Line
	4900 600  4900 2600
Wire Notes Line
	4900 2600 600  2600
Wire Notes Line
	600  2600 600  650 
Text Notes 1050 2400 0    50   ~ 0
Power input terminal\n
NoConn ~ 2350 1300
$Comp
L power:GND #PWR?
U 1 1 5D92CD8D
P 2700 1500
F 0 "#PWR?" H 2700 1250 50  0001 C CNN
F 1 "GND" H 2705 1327 50  0000 C CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0001 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1400 2500 1400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D92CD94
P 2500 1200
F 0 "#FLG?" H 2500 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 1373 50  0000 C CNN
F 2 "" H 2500 1200 50  0001 C CNN
F 3 "~" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D92CD9A
P 3100 1500
F 0 "#FLG?" H 3100 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 1673 50  0000 C CNN
F 2 "" H 3100 1500 50  0001 C CNN
F 3 "~" H 3100 1500 50  0001 C CNN
	1    3100 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1200 2500 1400
Connection ~ 2500 1400
Wire Wire Line
	2500 1400 2650 1400
Wire Wire Line
	2350 1500 2700 1500
Wire Wire Line
	2700 1500 3100 1500
Connection ~ 2700 1500
Wire Wire Line
	2150 4100 2150 4550
Connection ~ 2150 4550
Wire Wire Line
	2150 4550 2650 4550
Connection ~ 3500 4550
Wire Wire Line
	6400 4550 7050 4550
Wire Wire Line
	6400 4100 7050 4100
Wire Wire Line
	4250 4100 4350 4100
Wire Wire Line
	3500 4550 4350 4550
Wire Wire Line
	2650 4550 3500 4550
Wire Wire Line
	4350 4100 4800 4100
Wire Wire Line
	4350 4550 4800 4550
$Comp
L Device:R R?
U 1 1 5D965230
P 4800 4300
F 0 "R?" H 4870 4346 50  0000 L CNN
F 1 "10K" H 4870 4255 50  0000 L CNN
F 2 "" V 4730 4300 50  0001 C CNN
F 3 "~" H 4800 4300 50  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4150 4800 4100
Connection ~ 4800 4100
Wire Wire Line
	4800 4100 5150 4100
Connection ~ 4800 4550
Wire Wire Line
	4800 4550 5150 4550
Wire Wire Line
	4800 4450 4800 4550
Wire Wire Line
	5150 4100 5650 4100
Connection ~ 5150 4100
Wire Wire Line
	5150 4550 5650 4550
Connection ~ 5150 4550
Wire Wire Line
	3400 3600 6150 3600
$Comp
L Device:CP C?
U 1 1 5D972E35
P 5650 4300
F 0 "C?" H 5768 4346 50  0000 L CNN
F 1 "450uF" H 5768 4255 50  0000 L CNN
F 2 "" H 5688 4150 50  0001 C CNN
F 3 "~" H 5650 4300 50  0001 C CNN
	1    5650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4150 5650 4100
Connection ~ 5650 4100
Wire Wire Line
	5650 4100 6400 4100
Wire Wire Line
	5650 4450 5650 4550
Connection ~ 5650 4550
Wire Wire Line
	5650 4550 6400 4550
$EndSCHEMATC
