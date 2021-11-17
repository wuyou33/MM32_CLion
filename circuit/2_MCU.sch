EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "MM32_Board"
Date "2021-11-17"
Rev "1.0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MM32_Periph:MM32F3277G9P U?
U 1 1 61958C03
P 2700 5850
AR Path="/61958C03" Ref="U?"  Part="1" 
AR Path="/6194FB75/61958C03" Ref="U?"  Part="1" 
F 0 "U?" H 2700 9850 50  0000 L CNN
F 1 "MM32F3277G9P" H 6600 5800 50  0000 L CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 7500 5650 50  0001 C CNN
F 3 "" H 9000 7100 50  0001 C CNN
	1    2700 5850
	1    0    0    -1  
$EndComp
Text Label 1850 4350 0    50   ~ 0
XTAL_IN
Text Label 1850 4450 0    50   ~ 0
XTAL_OUT
$Comp
L Device:Crystal_GND24 Y?
U 1 1 6195992C
P 9150 2300
AR Path="/6195992C" Ref="Y?"  Part="1" 
AR Path="/6194FB75/6195992C" Ref="Y?"  Part="1" 
F 0 "Y?" H 9300 2150 50  0000 L CNN
F 1 "8MHz" H 9250 2050 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 9150 2300 50  0001 C CNN
F 3 "~" H 9150 2300 50  0001 C CNN
	1    9150 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6195B605
P 8600 2450
F 0 "C?" H 8715 2496 50  0000 L CNN
F 1 "18pF" H 8715 2405 50  0000 L CNN
F 2 "" H 8638 2300 50  0001 C CNN
F 3 "~" H 8600 2450 50  0001 C CNN
	1    8600 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6195C226
P 9750 2450
F 0 "C?" H 9865 2496 50  0000 L CNN
F 1 "18pF" H 9865 2405 50  0000 L CNN
F 2 "" H 9788 2300 50  0001 C CNN
F 3 "~" H 9750 2450 50  0001 C CNN
	1    9750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2300 8600 2300
Wire Wire Line
	9300 2300 9750 2300
$Comp
L power:GND #PWR0123
U 1 1 6195EE2A
P 9750 2750
F 0 "#PWR0123" H 9750 2500 50  0001 C CNN
F 1 "GND" H 9755 2577 50  0000 C CNN
F 2 "" H 9750 2750 50  0001 C CNN
F 3 "" H 9750 2750 50  0001 C CNN
	1    9750 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 6195F610
P 8600 2750
F 0 "#PWR0124" H 8600 2500 50  0001 C CNN
F 1 "GND" H 8605 2577 50  0000 C CNN
F 2 "" H 8600 2750 50  0001 C CNN
F 3 "" H 8600 2750 50  0001 C CNN
	1    8600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6195FCD3
P 9150 2750
F 0 "#PWR0125" H 9150 2500 50  0001 C CNN
F 1 "GND" H 9155 2577 50  0000 C CNN
F 2 "" H 9150 2750 50  0001 C CNN
F 3 "" H 9150 2750 50  0001 C CNN
	1    9150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6196015B
P 9150 1850
F 0 "#PWR0126" H 9150 1600 50  0001 C CNN
F 1 "GND" H 9155 1677 50  0000 C CNN
F 2 "" H 9150 1850 50  0001 C CNN
F 3 "" H 9150 1850 50  0001 C CNN
	1    9150 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 2100 9150 1850
Wire Wire Line
	9150 2500 9150 2750
Wire Wire Line
	9750 2600 9750 2750
Wire Wire Line
	8600 2600 8600 2750
Text Label 9450 2300 0    50   ~ 0
XTAL_IN
Text Label 8600 2300 0    50   ~ 0
XTAL_OUT
$Comp
L power:GND #PWR0127
U 1 1 61968F95
P 10400 2750
F 0 "#PWR0127" H 10400 2500 50  0001 C CNN
F 1 "GND" H 10405 2577 50  0000 C CNN
F 2 "" H 10400 2750 50  0001 C CNN
F 3 "" H 10400 2750 50  0001 C CNN
	1    10400 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 619696D4
P 10400 2000
F 0 "R?" H 10470 2046 50  0000 L CNN
F 1 "10kR" H 10470 1955 50  0000 L CNN
F 2 "" V 10330 2000 50  0001 C CNN
F 3 "~" H 10400 2000 50  0001 C CNN
	1    10400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0128
U 1 1 6196AE64
P 10400 1650
F 0 "#PWR0128" H 10400 1500 50  0001 C CNN
F 1 "+3.3V" H 10415 1823 50  0000 C CNN
F 2 "" H 10400 1650 50  0001 C CNN
F 3 "" H 10400 1650 50  0001 C CNN
	1    10400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1650 10400 1850
Text Label 10050 2250 0    50   ~ 0
RST
$Comp
L Device:C C?
U 1 1 61968781
P 10400 2500
F 0 "C?" H 10515 2546 50  0000 L CNN
F 1 "100nF" H 10515 2455 50  0000 L CNN
F 2 "" H 10438 2350 50  0001 C CNN
F 3 "~" H 10400 2500 50  0001 C CNN
	1    10400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2150 10400 2250
Wire Wire Line
	10400 2650 10400 2750
Wire Wire Line
	10050 2250 10400 2250
Connection ~ 10400 2250
Wire Wire Line
	10400 2250 10400 2350
$Comp
L power:GND #PWR0129
U 1 1 619850DF
P 7650 2250
F 0 "#PWR0129" H 7650 2000 50  0001 C CNN
F 1 "GND" V 7655 2122 50  0000 R CNN
F 2 "" H 7650 2250 50  0001 C CNN
F 3 "" H 7650 2250 50  0001 C CNN
	1    7650 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0130
U 1 1 6198FEE4
P 7650 2150
F 0 "#PWR0130" H 7650 2000 50  0001 C CNN
F 1 "+3.3V" V 7650 2400 50  0000 C CNN
F 2 "" H 7650 2150 50  0001 C CNN
F 3 "" H 7650 2150 50  0001 C CNN
	1    7650 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 619AB59A
P 7650 3550
F 0 "#PWR0131" H 7650 3300 50  0001 C CNN
F 1 "GND" V 7655 3422 50  0000 R CNN
F 2 "" H 7650 3550 50  0001 C CNN
F 3 "" H 7650 3550 50  0001 C CNN
	1    7650 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 619AD5EC
P 7650 4650
F 0 "#PWR0132" H 7650 4400 50  0001 C CNN
F 1 "GND" V 7655 4522 50  0000 R CNN
F 2 "" H 7650 4650 50  0001 C CNN
F 3 "" H 7650 4650 50  0001 C CNN
	1    7650 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 619C0F5F
P 1850 3650
F 0 "#PWR0133" H 1850 3400 50  0001 C CNN
F 1 "GND" V 1855 3522 50  0000 R CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3650 2600 3650
Wire Wire Line
	6900 2250 7650 2250
Wire Wire Line
	6900 4650 7650 4650
Wire Wire Line
	6900 3550 7650 3550
Wire Wire Line
	6900 2150 7650 2150
$Comp
L power:+3.3V #PWR0134
U 1 1 619D9E74
P 7650 3450
F 0 "#PWR0134" H 7650 3300 50  0001 C CNN
F 1 "+3.3V" V 7650 3700 50  0000 C CNN
F 2 "" H 7650 3450 50  0001 C CNN
F 3 "" H 7650 3450 50  0001 C CNN
	1    7650 3450
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0135
U 1 1 619DB9A0
P 7650 4550
F 0 "#PWR0135" H 7650 4400 50  0001 C CNN
F 1 "+3.3V" V 7650 4800 50  0000 C CNN
F 2 "" H 7650 4550 50  0001 C CNN
F 3 "" H 7650 4550 50  0001 C CNN
	1    7650 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4550 7650 4550
Wire Wire Line
	7650 3450 6900 3450
$Comp
L power:+3.3V #PWR0136
U 1 1 619E003C
P 1850 3750
F 0 "#PWR0136" H 1850 3600 50  0001 C CNN
F 1 "+3.3V" V 1850 4000 50  0000 C CNN
F 2 "" H 1850 3750 50  0001 C CNN
F 3 "" H 1850 3750 50  0001 C CNN
	1    1850 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 3750 2600 3750
$Comp
L power:GND #PWR0137
U 1 1 619E4663
P 1850 5150
F 0 "#PWR0137" H 1850 4900 50  0001 C CNN
F 1 "GND" V 1855 5022 50  0000 R CNN
F 2 "" H 1850 5150 50  0001 C CNN
F 3 "" H 1850 5150 50  0001 C CNN
	1    1850 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5150 2600 5150
$Comp
L power:+3.3V #PWR0138
U 1 1 619E466A
P 1850 5250
F 0 "#PWR0138" H 1850 5100 50  0001 C CNN
F 1 "+3.3V" V 1850 5500 50  0000 C CNN
F 2 "" H 1850 5250 50  0001 C CNN
F 3 "" H 1850 5250 50  0001 C CNN
	1    1850 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 5250 2250 5250
Wire Wire Line
	2600 5350 2250 5350
Wire Wire Line
	2250 5350 2250 5250
Connection ~ 2250 5250
Wire Wire Line
	2250 5250 2600 5250
$Comp
L power:+3.3V #PWR0139
U 1 1 619E78A5
P 1850 2650
F 0 "#PWR0139" H 1850 2500 50  0001 C CNN
F 1 "+3.3V" V 1850 2900 50  0000 C CNN
F 2 "" H 1850 2650 50  0001 C CNN
F 3 "" H 1850 2650 50  0001 C CNN
	1    1850 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 2650 2600 2650
$Comp
L power:+3.3V #PWR0140
U 1 1 619EB60B
P 3000 1100
F 0 "#PWR0140" H 3000 950 50  0001 C CNN
F 1 "+3.3V" V 3000 1350 50  0000 C CNN
F 2 "" H 3000 1100 50  0001 C CNN
F 3 "" H 3000 1100 50  0001 C CNN
	1    3000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1100 3000 1850
$Comp
L power:+3.3V #PWR0141
U 1 1 619EF000
P 4300 1100
F 0 "#PWR0141" H 4300 950 50  0001 C CNN
F 1 "+3.3V" V 4300 1350 50  0000 C CNN
F 2 "" H 4300 1100 50  0001 C CNN
F 3 "" H 4300 1100 50  0001 C CNN
	1    4300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1100 4300 1850
$Comp
L power:+3.3V #PWR0142
U 1 1 619EFD86
P 5300 1100
F 0 "#PWR0142" H 5300 950 50  0001 C CNN
F 1 "+3.3V" V 5300 1350 50  0000 C CNN
F 2 "" H 5300 1100 50  0001 C CNN
F 3 "" H 5300 1100 50  0001 C CNN
	1    5300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1100 5300 1850
$Comp
L power:GND #PWR0143
U 1 1 619F5DB5
P 3100 1100
F 0 "#PWR0143" H 3100 850 50  0001 C CNN
F 1 "GND" V 3105 972 50  0000 R CNN
F 2 "" H 3100 1100 50  0001 C CNN
F 3 "" H 3100 1100 50  0001 C CNN
	1    3100 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1100 3100 1850
$Comp
L power:GND #PWR0144
U 1 1 619F6712
P 4400 1100
F 0 "#PWR0144" H 4400 850 50  0001 C CNN
F 1 "GND" V 4405 972 50  0000 R CNN
F 2 "" H 4400 1100 50  0001 C CNN
F 3 "" H 4400 1100 50  0001 C CNN
	1    4400 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1100 4400 1850
$Comp
L power:GND #PWR0145
U 1 1 619F71A5
P 5400 1100
F 0 "#PWR0145" H 5400 850 50  0001 C CNN
F 1 "GND" V 5405 972 50  0000 R CNN
F 2 "" H 5400 1100 50  0001 C CNN
F 3 "" H 5400 1100 50  0001 C CNN
	1    5400 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 1100 5400 1850
$Comp
L power:+3.3V #PWR0146
U 1 1 619FF75D
P 6500 6700
F 0 "#PWR0146" H 6500 6550 50  0001 C CNN
F 1 "+3.3V" V 6500 6950 50  0000 C CNN
F 2 "" H 6500 6700 50  0001 C CNN
F 3 "" H 6500 6700 50  0001 C CNN
	1    6500 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 6700 6500 5950
$Comp
L power:GND #PWR0147
U 1 1 619FF764
P 6400 6700
F 0 "#PWR0147" H 6400 6450 50  0001 C CNN
F 1 "GND" V 6405 6572 50  0000 R CNN
F 2 "" H 6400 6700 50  0001 C CNN
F 3 "" H 6400 6700 50  0001 C CNN
	1    6400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6700 6400 5950
$Comp
L power:+3.3V #PWR0148
U 1 1 61A00A0A
P 5500 6700
F 0 "#PWR0148" H 5500 6550 50  0001 C CNN
F 1 "+3.3V" V 5500 6950 50  0000 C CNN
F 2 "" H 5500 6700 50  0001 C CNN
F 3 "" H 5500 6700 50  0001 C CNN
	1    5500 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 6700 5500 5950
$Comp
L power:GND #PWR0149
U 1 1 61A00A11
P 5400 6700
F 0 "#PWR0149" H 5400 6450 50  0001 C CNN
F 1 "GND" V 5405 6572 50  0000 R CNN
F 2 "" H 5400 6700 50  0001 C CNN
F 3 "" H 5400 6700 50  0001 C CNN
	1    5400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6700 5400 5950
$Comp
L power:+3.3V #PWR0150
U 1 1 61A02005
P 4500 6700
F 0 "#PWR0150" H 4500 6550 50  0001 C CNN
F 1 "+3.3V" V 4500 6950 50  0000 C CNN
F 2 "" H 4500 6700 50  0001 C CNN
F 3 "" H 4500 6700 50  0001 C CNN
	1    4500 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 6700 4500 5950
$Comp
L power:GND #PWR0151
U 1 1 61A0200C
P 4400 6700
F 0 "#PWR0151" H 4400 6450 50  0001 C CNN
F 1 "GND" V 4405 6572 50  0000 R CNN
F 2 "" H 4400 6700 50  0001 C CNN
F 3 "" H 4400 6700 50  0001 C CNN
	1    4400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6700 4400 5950
$Comp
L power:+3.3V #PWR0152
U 1 1 61A03056
P 3200 6700
F 0 "#PWR0152" H 3200 6550 50  0001 C CNN
F 1 "+3.3V" V 3200 6950 50  0000 C CNN
F 2 "" H 3200 6700 50  0001 C CNN
F 3 "" H 3200 6700 50  0001 C CNN
	1    3200 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 6700 3200 5950
$Comp
L power:GND #PWR0153
U 1 1 61A0305D
P 3100 6700
F 0 "#PWR0153" H 3100 6450 50  0001 C CNN
F 1 "GND" V 3105 6572 50  0000 R CNN
F 2 "" H 3100 6700 50  0001 C CNN
F 3 "" H 3100 6700 50  0001 C CNN
	1    3100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6700 3100 5950
Text Label 1850 4550 0    50   ~ 0
RST
Wire Wire Line
	1850 4350 2600 4350
Wire Wire Line
	2600 4450 1850 4450
Wire Wire Line
	1850 4550 2600 4550
$EndSCHEMATC
