EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
P 2150 5850
AR Path="/61958C03" Ref="U?"  Part="1" 
AR Path="/6194FB75/61958C03" Ref="U?"  Part="1" 
F 0 "U?" H 2150 9850 50  0000 L CNN
F 1 "MM32F3277G9P" H 6050 5800 50  0000 L CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 6950 5650 50  0001 C CNN
F 3 "" H 8450 7100 50  0001 C CNN
	1    2150 5850
	1    0    0    -1  
$EndComp
Text Label 1300 4350 0    50   ~ 0
XTAL_IN
Text Label 1300 4450 0    50   ~ 0
XTAL_OUT
$Comp
L Device:Crystal_GND24 Y?
U 1 1 6195992C
P 8750 2000
AR Path="/6195992C" Ref="Y?"  Part="1" 
AR Path="/6194FB75/6195992C" Ref="Y?"  Part="1" 
F 0 "Y?" H 8900 1850 50  0000 L CNN
F 1 "8MHz" H 8850 1750 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 8750 2000 50  0001 C CNN
F 3 "~" H 8750 2000 50  0001 C CNN
	1    8750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6195B605
P 8200 2150
F 0 "C?" H 8315 2196 50  0000 L CNN
F 1 "18pF" H 8315 2105 50  0000 L CNN
F 2 "" H 8238 2000 50  0001 C CNN
F 3 "~" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6195C226
P 9350 2150
F 0 "C?" H 9465 2196 50  0000 L CNN
F 1 "18pF" H 9465 2105 50  0000 L CNN
F 2 "" H 9388 2000 50  0001 C CNN
F 3 "~" H 9350 2150 50  0001 C CNN
	1    9350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2000 8200 2000
Wire Wire Line
	8900 2000 9350 2000
$Comp
L power:GND #PWR0123
U 1 1 6195EE2A
P 9350 2450
F 0 "#PWR0123" H 9350 2200 50  0001 C CNN
F 1 "GND" H 9355 2277 50  0000 C CNN
F 2 "" H 9350 2450 50  0001 C CNN
F 3 "" H 9350 2450 50  0001 C CNN
	1    9350 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 6195F610
P 8200 2450
F 0 "#PWR0124" H 8200 2200 50  0001 C CNN
F 1 "GND" H 8205 2277 50  0000 C CNN
F 2 "" H 8200 2450 50  0001 C CNN
F 3 "" H 8200 2450 50  0001 C CNN
	1    8200 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6195FCD3
P 8750 2450
F 0 "#PWR0125" H 8750 2200 50  0001 C CNN
F 1 "GND" H 8755 2277 50  0000 C CNN
F 2 "" H 8750 2450 50  0001 C CNN
F 3 "" H 8750 2450 50  0001 C CNN
	1    8750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6196015B
P 8750 1350
F 0 "#PWR0126" H 8750 1100 50  0001 C CNN
F 1 "GND" H 8755 1177 50  0000 C CNN
F 2 "" H 8750 1350 50  0001 C CNN
F 3 "" H 8750 1350 50  0001 C CNN
	1    8750 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 1800 8750 1350
Wire Wire Line
	8750 2200 8750 2450
Wire Wire Line
	9350 2300 9350 2450
Wire Wire Line
	8200 2300 8200 2450
Text Label 9050 2000 0    50   ~ 0
XTAL_IN
Text Label 8200 2000 0    50   ~ 0
XTAL_OUT
$Comp
L power:GND #PWR0127
U 1 1 61968F95
P 10250 2450
F 0 "#PWR0127" H 10250 2200 50  0001 C CNN
F 1 "GND" H 10255 2277 50  0000 C CNN
F 2 "" H 10250 2450 50  0001 C CNN
F 3 "" H 10250 2450 50  0001 C CNN
	1    10250 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 619696D4
P 10250 1700
F 0 "R?" H 10320 1746 50  0000 L CNN
F 1 "10kR" H 10320 1655 50  0000 L CNN
F 2 "" V 10180 1700 50  0001 C CNN
F 3 "~" H 10250 1700 50  0001 C CNN
	1    10250 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0128
U 1 1 6196AE64
P 10250 1350
F 0 "#PWR0128" H 10250 1200 50  0001 C CNN
F 1 "+3.3V" H 10265 1523 50  0000 C CNN
F 2 "" H 10250 1350 50  0001 C CNN
F 3 "" H 10250 1350 50  0001 C CNN
	1    10250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1350 10250 1550
Text Label 9900 1950 0    50   ~ 0
RST
$Comp
L Device:C C?
U 1 1 61968781
P 10250 2200
F 0 "C?" H 10365 2246 50  0000 L CNN
F 1 "100nF" H 10365 2155 50  0000 L CNN
F 2 "" H 10288 2050 50  0001 C CNN
F 3 "~" H 10250 2200 50  0001 C CNN
	1    10250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1850 10250 1950
Wire Wire Line
	10250 2350 10250 2450
Wire Wire Line
	9900 1950 10250 1950
Connection ~ 10250 1950
Wire Wire Line
	10250 1950 10250 2050
$Comp
L power:GND #PWR0129
U 1 1 619850DF
P 7100 2250
F 0 "#PWR0129" H 7100 2000 50  0001 C CNN
F 1 "GND" V 7105 2122 50  0000 R CNN
F 2 "" H 7100 2250 50  0001 C CNN
F 3 "" H 7100 2250 50  0001 C CNN
	1    7100 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0130
U 1 1 6198FEE4
P 7100 2150
F 0 "#PWR0130" H 7100 2000 50  0001 C CNN
F 1 "+3.3V" V 7100 2400 50  0000 C CNN
F 2 "" H 7100 2150 50  0001 C CNN
F 3 "" H 7100 2150 50  0001 C CNN
	1    7100 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 619AB59A
P 7100 3550
F 0 "#PWR0131" H 7100 3300 50  0001 C CNN
F 1 "GND" V 7105 3422 50  0000 R CNN
F 2 "" H 7100 3550 50  0001 C CNN
F 3 "" H 7100 3550 50  0001 C CNN
	1    7100 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 619AD5EC
P 7100 4650
F 0 "#PWR0132" H 7100 4400 50  0001 C CNN
F 1 "GND" V 7105 4522 50  0000 R CNN
F 2 "" H 7100 4650 50  0001 C CNN
F 3 "" H 7100 4650 50  0001 C CNN
	1    7100 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 619C0F5F
P 1300 3650
F 0 "#PWR0133" H 1300 3400 50  0001 C CNN
F 1 "GND" V 1305 3522 50  0000 R CNN
F 2 "" H 1300 3650 50  0001 C CNN
F 3 "" H 1300 3650 50  0001 C CNN
	1    1300 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3650 2050 3650
Wire Wire Line
	6350 2250 7100 2250
Wire Wire Line
	6350 4650 7100 4650
Wire Wire Line
	6350 3550 7100 3550
Wire Wire Line
	6350 2150 7100 2150
$Comp
L power:+3.3V #PWR0134
U 1 1 619D9E74
P 7100 3450
F 0 "#PWR0134" H 7100 3300 50  0001 C CNN
F 1 "+3.3V" V 7100 3700 50  0000 C CNN
F 2 "" H 7100 3450 50  0001 C CNN
F 3 "" H 7100 3450 50  0001 C CNN
	1    7100 3450
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0135
U 1 1 619DB9A0
P 7100 4550
F 0 "#PWR0135" H 7100 4400 50  0001 C CNN
F 1 "+3.3V" V 7100 4800 50  0000 C CNN
F 2 "" H 7100 4550 50  0001 C CNN
F 3 "" H 7100 4550 50  0001 C CNN
	1    7100 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4550 7100 4550
Wire Wire Line
	7100 3450 6350 3450
$Comp
L power:+3.3V #PWR0136
U 1 1 619E003C
P 1300 3750
F 0 "#PWR0136" H 1300 3600 50  0001 C CNN
F 1 "+3.3V" V 1300 4000 50  0000 C CNN
F 2 "" H 1300 3750 50  0001 C CNN
F 3 "" H 1300 3750 50  0001 C CNN
	1    1300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3750 2050 3750
$Comp
L power:GND #PWR0137
U 1 1 619E4663
P 1300 5150
F 0 "#PWR0137" H 1300 4900 50  0001 C CNN
F 1 "GND" V 1305 5022 50  0000 R CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 5150 2050 5150
$Comp
L power:+3.3V #PWR0138
U 1 1 619E466A
P 1300 5350
F 0 "#PWR0138" H 1300 5200 50  0001 C CNN
F 1 "+3.3V" V 1300 5600 50  0000 C CNN
F 2 "" H 1300 5350 50  0001 C CNN
F 3 "" H 1300 5350 50  0001 C CNN
	1    1300 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 619E78A5
P 1300 2650
F 0 "#PWR0139" H 1300 2500 50  0001 C CNN
F 1 "+3.3V" V 1300 2900 50  0000 C CNN
F 2 "" H 1300 2650 50  0001 C CNN
F 3 "" H 1300 2650 50  0001 C CNN
	1    1300 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2650 2050 2650
$Comp
L power:+3.3V #PWR0140
U 1 1 619EB60B
P 2450 1100
F 0 "#PWR0140" H 2450 950 50  0001 C CNN
F 1 "+3.3V" V 2450 1350 50  0000 C CNN
F 2 "" H 2450 1100 50  0001 C CNN
F 3 "" H 2450 1100 50  0001 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1100 2450 1850
$Comp
L power:+3.3V #PWR0141
U 1 1 619EF000
P 3750 1100
F 0 "#PWR0141" H 3750 950 50  0001 C CNN
F 1 "+3.3V" V 3750 1350 50  0000 C CNN
F 2 "" H 3750 1100 50  0001 C CNN
F 3 "" H 3750 1100 50  0001 C CNN
	1    3750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1100 3750 1850
$Comp
L power:+3.3V #PWR0142
U 1 1 619EFD86
P 4750 1100
F 0 "#PWR0142" H 4750 950 50  0001 C CNN
F 1 "+3.3V" V 4750 1350 50  0000 C CNN
F 2 "" H 4750 1100 50  0001 C CNN
F 3 "" H 4750 1100 50  0001 C CNN
	1    4750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1100 4750 1850
$Comp
L power:GND #PWR0143
U 1 1 619F5DB5
P 2550 1100
F 0 "#PWR0143" H 2550 850 50  0001 C CNN
F 1 "GND" V 2555 972 50  0000 R CNN
F 2 "" H 2550 1100 50  0001 C CNN
F 3 "" H 2550 1100 50  0001 C CNN
	1    2550 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 1100 2550 1850
$Comp
L power:GND #PWR0144
U 1 1 619F6712
P 3850 1100
F 0 "#PWR0144" H 3850 850 50  0001 C CNN
F 1 "GND" V 3855 972 50  0000 R CNN
F 2 "" H 3850 1100 50  0001 C CNN
F 3 "" H 3850 1100 50  0001 C CNN
	1    3850 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 1100 3850 1850
$Comp
L power:GND #PWR0145
U 1 1 619F71A5
P 4850 1100
F 0 "#PWR0145" H 4850 850 50  0001 C CNN
F 1 "GND" V 4855 972 50  0000 R CNN
F 2 "" H 4850 1100 50  0001 C CNN
F 3 "" H 4850 1100 50  0001 C CNN
	1    4850 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 1100 4850 1850
$Comp
L power:+3.3V #PWR0146
U 1 1 619FF75D
P 5950 6700
F 0 "#PWR0146" H 5950 6550 50  0001 C CNN
F 1 "+3.3V" V 5950 6950 50  0000 C CNN
F 2 "" H 5950 6700 50  0001 C CNN
F 3 "" H 5950 6700 50  0001 C CNN
	1    5950 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 6700 5950 5950
$Comp
L power:GND #PWR0147
U 1 1 619FF764
P 5850 6700
F 0 "#PWR0147" H 5850 6450 50  0001 C CNN
F 1 "GND" V 5855 6572 50  0000 R CNN
F 2 "" H 5850 6700 50  0001 C CNN
F 3 "" H 5850 6700 50  0001 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6700 5850 5950
$Comp
L power:+3.3V #PWR0148
U 1 1 61A00A0A
P 4950 6700
F 0 "#PWR0148" H 4950 6550 50  0001 C CNN
F 1 "+3.3V" V 4950 6950 50  0000 C CNN
F 2 "" H 4950 6700 50  0001 C CNN
F 3 "" H 4950 6700 50  0001 C CNN
	1    4950 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 6700 4950 5950
$Comp
L power:GND #PWR0149
U 1 1 61A00A11
P 4850 6700
F 0 "#PWR0149" H 4850 6450 50  0001 C CNN
F 1 "GND" V 4855 6572 50  0000 R CNN
F 2 "" H 4850 6700 50  0001 C CNN
F 3 "" H 4850 6700 50  0001 C CNN
	1    4850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6700 4850 5950
$Comp
L power:+3.3V #PWR0150
U 1 1 61A02005
P 3950 6700
F 0 "#PWR0150" H 3950 6550 50  0001 C CNN
F 1 "+3.3V" V 3950 6950 50  0000 C CNN
F 2 "" H 3950 6700 50  0001 C CNN
F 3 "" H 3950 6700 50  0001 C CNN
	1    3950 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 6700 3950 5950
$Comp
L power:GND #PWR0151
U 1 1 61A0200C
P 3850 6700
F 0 "#PWR0151" H 3850 6450 50  0001 C CNN
F 1 "GND" V 3855 6572 50  0000 R CNN
F 2 "" H 3850 6700 50  0001 C CNN
F 3 "" H 3850 6700 50  0001 C CNN
	1    3850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6700 3850 5950
$Comp
L power:+3.3V #PWR0152
U 1 1 61A03056
P 2650 6700
F 0 "#PWR0152" H 2650 6550 50  0001 C CNN
F 1 "+3.3V" V 2650 6950 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 6700 2650 5950
$Comp
L power:GND #PWR0153
U 1 1 61A0305D
P 2550 6700
F 0 "#PWR0153" H 2550 6450 50  0001 C CNN
F 1 "GND" V 2555 6572 50  0000 R CNN
F 2 "" H 2550 6700 50  0001 C CNN
F 3 "" H 2550 6700 50  0001 C CNN
	1    2550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6700 2550 5950
Text Label 1300 4550 0    50   ~ 0
RST
Wire Wire Line
	1300 4350 2050 4350
Wire Wire Line
	2050 4450 1300 4450
Wire Wire Line
	1300 4550 2050 4550
Text HLabel 4050 6450 3    50   Input ~ 0
PWR_EN
$Comp
L power:+3V0 #PWR0167
U 1 1 619B9817
P 1300 5250
F 0 "#PWR0167" H 1300 5100 50  0001 C CNN
F 1 "+3V0" V 1300 5400 50  0000 L CNN
F 2 "" H 1300 5250 50  0001 C CNN
F 3 "" H 1300 5250 50  0001 C CNN
	1    1300 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 5350 2050 5350
Wire Wire Line
	1300 5250 2050 5250
$Comp
L power:GND #PWR0168
U 1 1 619A8B10
P 1300 5050
F 0 "#PWR0168" H 1300 4800 50  0001 C CNN
F 1 "GND" V 1305 4922 50  0000 R CNN
F 2 "" H 1300 5050 50  0001 C CNN
F 3 "" H 1300 5050 50  0001 C CNN
	1    1300 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 5050 2050 5050
$Comp
L Device:C C?
U 1 1 619C01CC
P 8100 5050
F 0 "C?" H 8215 5096 50  0000 L CNN
F 1 "100nF" H 8215 5005 50  0000 L CNN
F 2 "" H 8138 4900 50  0001 C CNN
F 3 "~" H 8100 5050 50  0001 C CNN
	1    8100 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619C01D2
P 8550 5050
F 0 "C?" H 8665 5096 50  0000 L CNN
F 1 "100nF" H 8665 5005 50  0000 L CNN
F 2 "" H 8588 4900 50  0001 C CNN
F 3 "~" H 8550 5050 50  0001 C CNN
	1    8550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619C01D8
P 9000 5050
F 0 "C?" H 9115 5096 50  0000 L CNN
F 1 "100nF" H 9115 5005 50  0000 L CNN
F 2 "" H 9038 4900 50  0001 C CNN
F 3 "~" H 9000 5050 50  0001 C CNN
	1    9000 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619C01DE
P 9500 5050
F 0 "C?" H 9615 5096 50  0000 L CNN
F 1 "100nF" H 9615 5005 50  0000 L CNN
F 2 "" H 9538 4900 50  0001 C CNN
F 3 "~" H 9500 5050 50  0001 C CNN
	1    9500 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619C01E4
P 9950 5050
F 0 "C?" H 10065 5096 50  0000 L CNN
F 1 "100nF" H 10065 5005 50  0000 L CNN
F 2 "" H 9988 4900 50  0001 C CNN
F 3 "~" H 9950 5050 50  0001 C CNN
	1    9950 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619C01EA
P 10400 5050
F 0 "C?" H 10515 5096 50  0000 L CNN
F 1 "100nF" H 10515 5005 50  0000 L CNN
F 2 "" H 10438 4900 50  0001 C CNN
F 3 "~" H 10400 5050 50  0001 C CNN
	1    10400 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0169
U 1 1 619CAD24
P 9250 4700
F 0 "#PWR0169" H 9250 4550 50  0001 C CNN
F 1 "+3.3V" H 9250 4850 50  0000 C CNN
F 2 "" H 9250 4700 50  0001 C CNN
F 3 "" H 9250 4700 50  0001 C CNN
	1    9250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4900 8100 4750
Wire Wire Line
	8100 4750 8550 4750
Wire Wire Line
	9250 4750 9250 4700
Wire Wire Line
	9250 4750 9500 4750
Wire Wire Line
	10400 4750 10400 4900
Connection ~ 9250 4750
Wire Wire Line
	9950 4900 9950 4750
Connection ~ 9950 4750
Wire Wire Line
	9950 4750 10400 4750
Wire Wire Line
	9500 4900 9500 4750
Connection ~ 9500 4750
Wire Wire Line
	9500 4750 9950 4750
Wire Wire Line
	9000 4900 9000 4750
Connection ~ 9000 4750
Wire Wire Line
	9000 4750 9250 4750
Wire Wire Line
	8550 4900 8550 4750
Connection ~ 8550 4750
Wire Wire Line
	8550 4750 9000 4750
$Comp
L power:GND #PWR0170
U 1 1 619F405D
P 9250 5400
F 0 "#PWR0170" H 9250 5150 50  0001 C CNN
F 1 "GND" H 9300 5250 50  0000 R CNN
F 2 "" H 9250 5400 50  0001 C CNN
F 3 "" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5200 8100 5350
Wire Wire Line
	8100 5350 8550 5350
Wire Wire Line
	9250 5400 9250 5350
Wire Wire Line
	9250 5350 9500 5350
Wire Wire Line
	10400 5350 10400 5200
Connection ~ 9250 5350
Wire Wire Line
	9950 5200 9950 5350
Connection ~ 9950 5350
Wire Wire Line
	9950 5350 10400 5350
Wire Wire Line
	9500 5200 9500 5350
Connection ~ 9500 5350
Wire Wire Line
	9500 5350 9950 5350
Wire Wire Line
	9000 5200 9000 5350
Connection ~ 9000 5350
Wire Wire Line
	9000 5350 9250 5350
Wire Wire Line
	8550 5200 8550 5350
Connection ~ 8550 5350
Wire Wire Line
	8550 5350 9000 5350
$Comp
L Device:C C?
U 1 1 61A13511
P 8100 6200
F 0 "C?" H 8215 6246 50  0000 L CNN
F 1 "100nF" H 8215 6155 50  0000 L CNN
F 2 "" H 8138 6050 50  0001 C CNN
F 3 "~" H 8100 6200 50  0001 C CNN
	1    8100 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A13517
P 8550 6200
F 0 "C?" H 8665 6246 50  0000 L CNN
F 1 "100nF" H 8665 6155 50  0000 L CNN
F 2 "" H 8588 6050 50  0001 C CNN
F 3 "~" H 8550 6200 50  0001 C CNN
	1    8550 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A1351D
P 9000 6200
F 0 "C?" H 9115 6246 50  0000 L CNN
F 1 "100nF" H 9115 6155 50  0000 L CNN
F 2 "" H 9038 6050 50  0001 C CNN
F 3 "~" H 9000 6200 50  0001 C CNN
	1    9000 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A13523
P 9500 6200
F 0 "C?" H 9615 6246 50  0000 L CNN
F 1 "100nF" H 9615 6155 50  0000 L CNN
F 2 "" H 9538 6050 50  0001 C CNN
F 3 "~" H 9500 6200 50  0001 C CNN
	1    9500 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A13529
P 9950 6200
F 0 "C?" H 10065 6246 50  0000 L CNN
F 1 "100nF" H 10065 6155 50  0000 L CNN
F 2 "" H 9988 6050 50  0001 C CNN
F 3 "~" H 9950 6200 50  0001 C CNN
	1    9950 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A1352F
P 10400 6200
F 0 "C?" H 10515 6246 50  0000 L CNN
F 1 "100nF" H 10515 6155 50  0000 L CNN
F 2 "" H 10438 6050 50  0001 C CNN
F 3 "~" H 10400 6200 50  0001 C CNN
	1    10400 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0171
U 1 1 61A13535
P 9250 5850
F 0 "#PWR0171" H 9250 5700 50  0001 C CNN
F 1 "+3.3V" H 9250 6000 50  0000 C CNN
F 2 "" H 9250 5850 50  0001 C CNN
F 3 "" H 9250 5850 50  0001 C CNN
	1    9250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6050 8100 5900
Wire Wire Line
	8100 5900 8550 5900
Wire Wire Line
	9250 5900 9250 5850
Wire Wire Line
	9250 5900 9500 5900
Wire Wire Line
	10400 5900 10400 6050
Connection ~ 9250 5900
Wire Wire Line
	9950 6050 9950 5900
Connection ~ 9950 5900
Wire Wire Line
	9950 5900 10400 5900
Wire Wire Line
	9500 6050 9500 5900
Connection ~ 9500 5900
Wire Wire Line
	9500 5900 9950 5900
Wire Wire Line
	9000 6050 9000 5900
Connection ~ 9000 5900
Wire Wire Line
	9000 5900 9250 5900
Wire Wire Line
	8550 6050 8550 5900
Connection ~ 8550 5900
Wire Wire Line
	8550 5900 9000 5900
$Comp
L power:GND #PWR0172
U 1 1 61A1354D
P 9250 6550
F 0 "#PWR0172" H 9250 6300 50  0001 C CNN
F 1 "GND" H 9300 6400 50  0000 R CNN
F 2 "" H 9250 6550 50  0001 C CNN
F 3 "" H 9250 6550 50  0001 C CNN
	1    9250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6350 8100 6500
Wire Wire Line
	8100 6500 8550 6500
Wire Wire Line
	9250 6550 9250 6500
Wire Wire Line
	9250 6500 9500 6500
Wire Wire Line
	10400 6500 10400 6350
Connection ~ 9250 6500
Wire Wire Line
	9950 6350 9950 6500
Connection ~ 9950 6500
Wire Wire Line
	9950 6500 10400 6500
Wire Wire Line
	9500 6350 9500 6500
Connection ~ 9500 6500
Wire Wire Line
	9500 6500 9950 6500
Wire Wire Line
	9000 6350 9000 6500
Connection ~ 9000 6500
Wire Wire Line
	9000 6500 9250 6500
Wire Wire Line
	8550 6350 8550 6500
Connection ~ 8550 6500
Wire Wire Line
	8550 6500 9000 6500
Text HLabel 1450 2150 0    50   Output ~ 0
SPI2_CLK
Text HLabel 1450 2250 0    50   Output ~ 0
SPI2_CS
Text HLabel 1450 2450 0    50   Input ~ 0
SPI2_MISO
Text HLabel 1450 2550 0    50   Output ~ 0
SPI2_MOSI
Wire Wire Line
	1450 2150 2050 2150
Wire Wire Line
	2050 2250 1450 2250
Wire Wire Line
	1450 2450 2050 2450
Wire Wire Line
	2050 2550 1450 2550
$Comp
L Device:LED D?
U 1 1 61CD206E
P 8950 3850
F 0 "D?" H 8943 4067 50  0000 C CNN
F 1 "LED" H 8943 3976 50  0000 C CNN
F 2 "" H 8950 3850 50  0001 C CNN
F 3 "~" H 8950 3850 50  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61CEFA51
P 8950 4250
F 0 "D?" H 8943 4467 50  0000 C CNN
F 1 "LED" H 8943 4376 50  0000 C CNN
F 2 "" H 8950 4250 50  0001 C CNN
F 3 "~" H 8950 4250 50  0001 C CNN
	1    8950 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61CF09EA
P 9650 3850
F 0 "R?" V 9443 3850 50  0000 C CNN
F 1 "1kR" V 9534 3850 50  0000 C CNN
F 2 "" V 9580 3850 50  0001 C CNN
F 3 "~" H 9650 3850 50  0001 C CNN
	1    9650 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61CF1E67
P 9650 4250
F 0 "R?" V 9443 4250 50  0000 C CNN
F 1 "1kR" V 9534 4250 50  0000 C CNN
F 2 "" V 9580 4250 50  0001 C CNN
F 3 "~" H 9650 4250 50  0001 C CNN
	1    9650 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 3850 9500 3850
Wire Wire Line
	9100 4250 9500 4250
Text Label 8100 4250 0    50   ~ 0
LED1
Text Label 8100 3850 0    50   ~ 0
LED2
Wire Wire Line
	8100 3850 8800 3850
Wire Wire Line
	8800 4250 8100 4250
$Comp
L power:+3.3V #PWR?
U 1 1 61D01329
P 10150 3850
F 0 "#PWR?" H 10150 3700 50  0001 C CNN
F 1 "+3.3V" V 10150 4100 50  0000 C CNN
F 2 "" H 10150 3850 50  0001 C CNN
F 3 "" H 10150 3850 50  0001 C CNN
	1    10150 3850
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61D01D01
P 10150 4250
F 0 "#PWR?" H 10150 4100 50  0001 C CNN
F 1 "+3.3V" V 10150 4500 50  0000 C CNN
F 2 "" H 10150 4250 50  0001 C CNN
F 3 "" H 10150 4250 50  0001 C CNN
	1    10150 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 4250 10150 4250
Wire Wire Line
	10150 3850 9800 3850
Text Label 3650 6750 1    50   ~ 0
LED1
Text Label 3750 6750 1    50   ~ 0
LED2
Wire Wire Line
	3750 6750 3750 5950
Wire Wire Line
	3650 5950 3650 6750
Text HLabel 1450 2350 0    50   Input ~ 0
IMU_DR
Wire Wire Line
	1450 2350 2050 2350
Text HLabel 2650 1350 1    50   Output ~ 0
IMU_RST
Wire Wire Line
	2650 1350 2650 1850
Wire Wire Line
	4050 6450 4050 5950
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 61D91BBB
P 9050 3000
AR Path="/6191448D/61D91BBB" Ref="SW?"  Part="1" 
AR Path="/6194FB75/61D91BBB" Ref="K?"  Part="1" 
F 0 "K?" H 9050 3100 50  0000 C CNN
F 1 "SW_DIP_x01" H 9050 3176 50  0001 C CNN
F 2 "" H 9050 3000 50  0001 C CNN
F 3 "~" H 9050 3000 50  0001 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61D96B9D
P 10150 3200
F 0 "#PWR?" H 10150 3050 50  0001 C CNN
F 1 "+3.3V" V 10150 3450 50  0000 C CNN
F 2 "" H 10150 3200 50  0001 C CNN
F 3 "" H 10150 3200 50  0001 C CNN
	1    10150 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61D9B166
P 9800 3200
F 0 "R?" V 9593 3200 50  0000 C CNN
F 1 "10kR" V 9684 3200 50  0000 C CNN
F 2 "" V 9730 3200 50  0001 C CNN
F 3 "~" H 9800 3200 50  0001 C CNN
	1    9800 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61D9DF7D
P 9050 3200
F 0 "C?" V 9165 3246 50  0000 L CNN
F 1 "100nF" V 9250 3250 50  0000 L CNN
F 2 "" H 9088 3050 50  0001 C CNN
F 3 "~" H 9050 3200 50  0001 C CNN
	1    9050 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 3200 10150 3200
Wire Wire Line
	9200 3200 9450 3200
Wire Wire Line
	9450 3200 9450 3000
Wire Wire Line
	9450 3000 9350 3000
Connection ~ 9450 3200
Wire Wire Line
	9450 3200 9650 3200
$Comp
L power:GND #PWR?
U 1 1 61DE545E
P 8250 3200
F 0 "#PWR?" H 8250 2950 50  0001 C CNN
F 1 "GND" H 8255 3027 50  0000 C CNN
F 2 "" H 8250 3200 50  0001 C CNN
F 3 "" H 8250 3200 50  0001 C CNN
	1    8250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3200 8650 3200
Wire Wire Line
	8750 3000 8650 3000
Wire Wire Line
	8650 3000 8650 3200
Connection ~ 8650 3200
Wire Wire Line
	8650 3200 8900 3200
$Comp
L Device:R R?
U 1 1 61DF7C66
P 3050 1500
F 0 "R?" H 3120 1546 50  0000 L CNN
F 1 "10kR" H 3120 1455 50  0000 L CNN
F 2 "" V 2980 1500 50  0001 C CNN
F 3 "~" H 3050 1500 50  0001 C CNN
	1    3050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61DFA0CD
P 3050 1100
F 0 "#PWR?" H 3050 850 50  0001 C CNN
F 1 "GND" V 3055 972 50  0000 R CNN
F 2 "" H 3050 1100 50  0001 C CNN
F 3 "" H 3050 1100 50  0001 C CNN
	1    3050 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 1100 3050 1350
Wire Wire Line
	3050 1650 3050 1850
Text HLabel 7000 2450 2    50   BiDi ~ 0
SWDIO
Text HLabel 5950 1350 1    50   Input ~ 0
SWDCLK
Wire Wire Line
	5950 1350 5950 1850
Wire Wire Line
	6350 2450 7000 2450
Text HLabel 6900 2850 2    50   Output ~ 0
UART1_TX
Text HLabel 6900 2750 2    50   Input ~ 0
UART1_RX
Wire Wire Line
	6350 2850 6900 2850
Wire Wire Line
	6900 2750 6350 2750
$EndSCHEMATC
