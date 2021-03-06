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
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5D8FC2C6
P 3950 1550
F 0 "U1" H 3950 1792 50  0000 C CNN
F 1 "LM7805_TO220" H 3950 1701 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3950 1775 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3950 1500 50  0001 C CNN
	1    3950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D8FD303
P 3950 2100
F 0 "R1" H 4020 2146 50  0000 L CNN
F 1 "1.5K" H 4020 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2100 50  0001 C CNN
F 3 "~" H 3950 2100 50  0001 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D8FD7CB
P 3950 2700
F 0 "R2" H 4020 2746 50  0000 L CNN
F 1 "1.5K" H 4020 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2700 50  0001 C CNN
F 3 "~" H 3950 2700 50  0001 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5D901310
P 2700 2400
F 0 "J1" H 2808 2681 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2808 2590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2700 2400 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5D904260
P 3450 2400
F 0 "D1" H 3450 2616 50  0000 C CNN
F 1 "1N4007" H 3450 2525 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3450 2225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3450 2400 50  0001 C CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2400 3300 2400
Wire Wire Line
	3600 2400 3950 2400
Wire Wire Line
	3950 2400 3950 2550
Wire Wire Line
	3950 2250 3950 2400
Connection ~ 3950 2400
Wire Wire Line
	3950 1850 3950 1950
Wire Wire Line
	3950 2850 3950 2950
Wire Wire Line
	3650 1550 3150 1550
Wire Wire Line
	3150 1550 3150 2300
Wire Wire Line
	3150 2300 2900 2300
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 5D8FCA92
P 3950 3250
F 0 "U2" H 3950 3399 50  0000 C CNN
F 1 "LM7805_TO220" H 3950 3490 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3950 3475 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3950 3200 50  0001 C CNN
	1    3950 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	3650 3250 3150 3250
Wire Wire Line
	3150 3250 3150 2500
Wire Wire Line
	3150 2500 2900 2500
Wire Wire Line
	4700 1550 4250 1550
Wire Wire Line
	4700 3250 4250 3250
$Comp
L Connector:AudioJack3 J2
U 1 1 5D9160AB
P 4900 2350
F 0 "J2" H 4620 2283 50  0000 R CNN
F 1 "AudioJack3" H 4620 2374 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 4900 2350 50  0001 C CNN
F 3 "~" H 4900 2350 50  0001 C CNN
	1    4900 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 1550 4700 2250
Wire Wire Line
	4700 3250 4700 2650
Wire Wire Line
	4700 2650 4600 2650
Wire Wire Line
	4600 2650 4600 2350
Wire Wire Line
	4600 2350 4700 2350
Wire Wire Line
	4700 2450 4500 2450
Wire Wire Line
	4500 2450 4500 2400
Wire Wire Line
	3950 2400 4500 2400
$EndSCHEMATC
