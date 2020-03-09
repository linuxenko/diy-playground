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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5E5D44CE
P 5950 3300
F 0 "A1" H 5900 3150 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5950 3350 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5950 3300 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5950 3300 50  0001 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003A U1
U 1 1 5E5DE4F5
P 4050 3500
F 0 "U1" H 4050 4167 50  0000 C CNN
F 1 "ULN2003A" H 4050 4076 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 4100 2950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 4150 3300 50  0001 C CNN
	1    4050 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 3300 5450 3300
Wire Wire Line
	4450 3400 5450 3400
Wire Wire Line
	4450 3500 5450 3500
Wire Wire Line
	4450 3600 5450 3600
Wire Wire Line
	4450 3700 5450 3700
NoConn ~ 4450 3800
NoConn ~ 4450 3900
NoConn ~ 3650 3900
NoConn ~ 3650 3800
NoConn ~ 3650 3100
$Comp
L power:GND #PWR01
U 1 1 5E5E97F1
P 4050 4450
F 0 "#PWR01" H 4050 4200 50  0001 C CNN
F 1 "GND" H 4055 4277 50  0000 C CNN
F 2 "" H 4050 4450 50  0001 C CNN
F 3 "" H 4050 4450 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4100 4050 4450
$Comp
L power:GND #PWR02
U 1 1 5E5EA582
P 6000 4450
F 0 "#PWR02" H 6000 4200 50  0001 C CNN
F 1 "GND" H 6005 4277 50  0000 C CNN
F 2 "" H 6000 4450 50  0001 C CNN
F 3 "" H 6000 4450 50  0001 C CNN
	1    6000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4300 5950 4400
Wire Wire Line
	5950 4400 6000 4400
Wire Wire Line
	6050 4300 6050 4400
Wire Wire Line
	6050 4400 6000 4400
Connection ~ 6000 4400
Wire Wire Line
	6000 4400 6000 4450
NoConn ~ 6050 2300
NoConn ~ 6150 2300
NoConn ~ 6450 2700
NoConn ~ 6450 2800
NoConn ~ 6450 3100
NoConn ~ 5450 2700
NoConn ~ 5450 2800
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 5E5F223C
P 2800 3500
F 0 "J2" H 2908 3881 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2908 3790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2800 3500 50  0001 C CNN
F 3 "~" H 2800 3500 50  0001 C CNN
	1    2800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3300 3650 3300
Wire Wire Line
	3000 3400 3650 3400
Wire Wire Line
	3000 3500 3650 3500
Wire Wire Line
	3000 3600 3650 3600
Wire Wire Line
	3000 3700 3650 3700
NoConn ~ 5450 4000
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5E5F460E
P 2800 2600
F 0 "J1" H 2908 2981 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2908 2890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2800 2600 50  0001 C CNN
F 3 "~" H 2800 2600 50  0001 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2900 4900 2900
Wire Wire Line
	4900 2900 4900 3900
Wire Wire Line
	4900 3900 5450 3900
Wire Wire Line
	5450 3800 4950 3800
Wire Wire Line
	4950 3800 4950 2800
Wire Wire Line
	4950 2800 3000 2800
Wire Wire Line
	3000 2700 5000 2700
Wire Wire Line
	5000 2700 5000 3200
Wire Wire Line
	5000 3200 5450 3200
Wire Wire Line
	5450 3100 5050 3100
Wire Wire Line
	5050 3100 5050 2600
Wire Wire Line
	5050 2600 3000 2600
Wire Wire Line
	3000 2500 5100 2500
Wire Wire Line
	5100 2500 5100 3000
Wire Wire Line
	5100 3000 5450 3000
Wire Wire Line
	5450 2900 5150 2900
Wire Wire Line
	5150 2900 5150 2400
Wire Wire Line
	5150 2400 3000 2400
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 5E5F8271
P 7950 3700
F 0 "J4" H 7922 3582 50  0000 R CNN
F 1 "Conn_01x08_Male" H 7922 3673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7950 3700 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	1    7950 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 3300 7750 3300
Wire Wire Line
	6450 3400 7750 3400
Wire Wire Line
	6450 3500 7750 3500
Wire Wire Line
	6450 3600 7750 3600
Wire Wire Line
	6450 3700 7750 3700
Wire Wire Line
	6450 3800 7750 3800
Wire Wire Line
	6450 3900 7750 3900
Wire Wire Line
	6450 4000 7750 4000
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5E6026CA
P 7850 1950
F 0 "J3" H 7822 1832 50  0000 R CNN
F 1 "Conn_01x04_Male" H 7822 1923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7850 1950 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2300 5850 1750
Wire Wire Line
	5850 1750 7300 1750
Wire Wire Line
	7650 1850 7300 1850
Wire Wire Line
	7300 1850 7300 1750
Connection ~ 7300 1750
Wire Wire Line
	7300 1750 7650 1750
$Comp
L power:GND #PWR03
U 1 1 5E6048A9
P 7300 2250
F 0 "#PWR03" H 7300 2000 50  0001 C CNN
F 1 "GND" H 7305 2077 50  0000 C CNN
F 2 "" H 7300 2250 50  0001 C CNN
F 3 "" H 7300 2250 50  0001 C CNN
	1    7300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1950 7300 1950
Wire Wire Line
	7650 2050 7300 2050
Wire Wire Line
	7300 1950 7300 2050
Connection ~ 7300 2050
Wire Wire Line
	7300 2050 7300 2250
$EndSCHEMATC
