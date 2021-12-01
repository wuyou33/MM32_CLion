EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "MM32_Board"
Date "2021-12-01"
Rev "1.0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MM32_Periph:SY8303 U4
U 1 1 6191870D
P 8250 2700
F 0 "U4" H 8475 3275 50  0000 C CNN
F 1 "SY8303" H 8475 3184 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8" H 8900 2550 50  0001 C CNN
F 3 "" H 8250 2850 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$Comp
L MM32_Periph:ME85P03 Q2
U 1 1 61918BD3
P 2500 2050
F 0 "Q2" V 2700 2400 50  0000 L CNN
F 1 "ME85P03" V 2600 2300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2850 1750 50  0001 C CNN
F 3 "" H 2950 2200 50  0001 C CNN
	1    2500 2050
	0    1    -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 6190F774
P 4250 2150
F 0 "R4" H 4320 2196 50  0000 L CNN
F 1 "1MR" H 4320 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4180 2150 50  0001 C CNN
F 3 "~" H 4250 2150 50  0001 C CNN
	1    4250 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6190FF38
P 4250 3150
F 0 "C3" H 4365 3196 50  0000 L CNN
F 1 "10uF" H 4365 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 3000 50  0001 C CNN
F 3 "~" H 4250 3150 50  0001 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L MM32_Periph:S8050 Q4
U 1 1 61925CBB
P 4450 3050
F 0 "Q4" H 4840 3296 50  0000 L CNN
F 1 "S8050" H 4840 3205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5400 3100 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6192BF14
P 4750 2150
F 0 "R5" H 4820 2196 50  0000 L CNN
F 1 "100kR" H 4820 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4680 2150 50  0001 C CNN
F 3 "~" H 4750 2150 50  0001 C CNN
	1    4750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2850 4250 2850
Connection ~ 4250 2850
Wire Wire Line
	4250 2850 4250 3000
$Comp
L MM32_Periph:S8050 Q1
U 1 1 6192C855
P 2350 2750
F 0 "Q1" H 2741 2996 50  0000 L CNN
F 1 "S8050" H 2741 2905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3300 2800 50  0001 C CNN
F 3 "" H 2750 3000 50  0001 C CNN
	1    2350 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6192FE42
P 2050 2000
F 0 "R1" H 2120 2046 50  0000 L CNN
F 1 "100kR" H 2120 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 2000 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2150 2050 2200
Wire Wire Line
	2050 2200 2700 2200
Wire Wire Line
	2700 2200 2700 2050
Wire Wire Line
	2500 1750 2050 1750
Wire Wire Line
	2050 1750 2050 1850
Wire Wire Line
	4250 2300 4250 2850
Wire Wire Line
	4750 2300 4750 2550
$Comp
L Device:R R3
U 1 1 619359DE
P 3200 2150
F 0 "R3" H 3270 2196 50  0000 L CNN
F 1 "100kR" H 3270 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 2150 50  0001 C CNN
F 3 "~" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1750 4250 2000
Wire Wire Line
	2900 1750 3200 1750
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 6193A021
P 3700 2550
F 0 "SW1" H 3700 2450 50  0000 C CNN
F 1 "SW_DIP_x01" H 3700 2726 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 3700 2550 50  0001 C CNN
F 3 "~" H 3700 2550 50  0001 C CNN
	1    3700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2000 3200 1750
Connection ~ 3200 1750
Wire Wire Line
	3200 1750 4250 1750
Wire Wire Line
	3200 2300 3200 2550
Connection ~ 3200 2550
Wire Wire Line
	3200 2550 3400 2550
Wire Wire Line
	4000 2550 4750 2550
Connection ~ 4750 2550
Wire Wire Line
	4750 2550 4750 2650
$Comp
L power:GND #PWR015
U 1 1 6193E6CC
P 4250 3450
F 0 "#PWR015" H 4250 3200 50  0001 C CNN
F 1 "GND" H 4255 3277 50  0000 C CNN
F 2 "" H 4250 3450 50  0001 C CNN
F 3 "" H 4250 3450 50  0001 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6193E8C3
P 4750 3450
F 0 "#PWR019" H 4750 3200 50  0001 C CNN
F 1 "GND" H 4755 3277 50  0000 C CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6193EB71
P 2050 3450
F 0 "#PWR07" H 2050 3200 50  0001 C CNN
F 1 "GND" H 2055 3277 50  0000 C CNN
F 2 "" H 2050 3450 50  0001 C CNN
F 3 "" H 2050 3450 50  0001 C CNN
	1    2050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3300 4250 3450
Wire Wire Line
	4750 3050 4750 3450
Connection ~ 4250 1750
$Comp
L power:VIN #PWR06
U 1 1 61943E9A
P 2050 1600
F 0 "#PWR06" H 2050 1500 50  0001 C CNN
F 1 "VIN" H 2000 1750 50  0000 L CNN
F 2 "" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR014
U 1 1 61945791
P 4250 1600
F 0 "#PWR014" H 4250 1450 50  0001 C CNN
F 1 "+15V" H 4265 1773 50  0000 C CNN
F 2 "" H 4250 1600 50  0001 C CNN
F 3 "" H 4250 1600 50  0001 C CNN
	1    4250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2350 2050 2200
Connection ~ 2050 2200
Wire Wire Line
	2350 2550 2650 2550
Wire Wire Line
	2050 2750 2050 3450
Wire Wire Line
	2050 1750 2050 1600
Connection ~ 2050 1750
Wire Wire Line
	4250 1750 4250 1600
$Comp
L Transistor_FET:AO3400A Q3
U 1 1 6195E80E
P 2750 3000
F 0 "Q3" H 2955 3046 50  0000 L CNN
F 1 "WST3400A" H 2955 2955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2950 2925 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 2750 3000 50  0001 L CNN
	1    2750 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 2800 2650 2550
Connection ~ 2650 2550
Wire Wire Line
	2650 2550 3200 2550
$Comp
L power:GND #PWR08
U 1 1 61962F27
P 2650 3450
F 0 "#PWR08" H 2650 3200 50  0001 C CNN
F 1 "GND" H 2655 3277 50  0000 C CNN
F 2 "" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
	1    2650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3450 2650 3200
Text HLabel 3300 3000 2    50   Input ~ 0
PWR_EN
Wire Wire Line
	2950 3000 3050 3000
$Comp
L Device:R R2
U 1 1 61966AB0
P 3050 3250
F 0 "R2" H 3120 3296 50  0000 L CNN
F 1 "10kR" H 3120 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2980 3250 50  0001 C CNN
F 3 "~" H 3050 3250 50  0001 C CNN
	1    3050 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61967C7D
P 3050 3450
F 0 "#PWR011" H 3050 3200 50  0001 C CNN
F 1 "GND" H 3055 3277 50  0000 C CNN
F 2 "" H 3050 3450 50  0001 C CNN
F 3 "" H 3050 3450 50  0001 C CNN
	1    3050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3400 3050 3450
$Comp
L Device:R R11
U 1 1 6196DA44
P 7850 2850
F 0 "R11" H 7920 2896 50  0000 L CNN
F 1 "47kR" H 7920 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 2850 50  0001 C CNN
F 3 "~" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6196E398
P 7450 2750
F 0 "R9" H 7520 2796 50  0000 L CNN
F 1 "13.6kR" H 7520 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7380 2750 50  0001 C CNN
F 3 "~" H 7450 2750 50  0001 C CNN
	1    7450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6196E6D1
P 7450 1950
F 0 "R8" H 7520 1996 50  0000 L CNN
F 1 "100kR" H 7520 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7380 1950 50  0001 C CNN
F 3 "~" H 7450 1950 50  0001 C CNN
	1    7450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 6196EEC5
P 7450 3450
F 0 "#PWR032" H 7450 3200 50  0001 C CNN
F 1 "GND" H 7455 3277 50  0000 C CNN
F 2 "" H 7450 3450 50  0001 C CNN
F 3 "" H 7450 3450 50  0001 C CNN
	1    7450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 6196F796
P 7850 3450
F 0 "#PWR034" H 7850 3200 50  0001 C CNN
F 1 "GND" H 7855 3277 50  0000 C CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR040
U 1 1 6196FAF7
P 9100 1600
F 0 "#PWR040" H 9100 1450 50  0001 C CNN
F 1 "+15V" H 9115 1773 50  0000 C CNN
F 2 "" H 9100 1600 50  0001 C CNN
F 3 "" H 9100 1600 50  0001 C CNN
	1    9100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 61972F1D
P 7450 1600
F 0 "#PWR031" H 7450 1450 50  0001 C CNN
F 1 "+5V" H 7465 1773 50  0000 C CNN
F 2 "" H 7450 1600 50  0001 C CNN
F 3 "" H 7450 1600 50  0001 C CNN
	1    7450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1800 7450 1600
Wire Wire Line
	7850 3000 7850 3450
Wire Wire Line
	7850 2700 7850 2450
Wire Wire Line
	7850 2450 8150 2450
Wire Wire Line
	8150 2350 7450 2350
Wire Wire Line
	7450 2350 7450 2100
Wire Wire Line
	7450 2600 7450 2350
Connection ~ 7450 2350
Wire Wire Line
	7450 2900 7450 3450
$Comp
L power:GND #PWR035
U 1 1 6197976C
P 8100 3450
F 0 "#PWR035" H 8100 3200 50  0001 C CNN
F 1 "GND" H 8105 3277 50  0000 C CNN
F 2 "" H 8100 3450 50  0001 C CNN
F 3 "" H 8100 3450 50  0001 C CNN
	1    8100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3450 8100 2650
Wire Wire Line
	8100 2550 8150 2550
Wire Wire Line
	8150 2650 8100 2650
Connection ~ 8100 2650
Wire Wire Line
	8100 2650 8100 2550
$Comp
L Device:L L2
U 1 1 6197D781
P 9700 2550
F 0 "L2" V 9800 2600 50  0000 C CNN
F 1 "4.7uH" V 9600 2550 50  0000 C CNN
F 2 "Inductor_SMD:L_Abracon_ASPI-0630LR" H 9700 2550 50  0001 C CNN
F 3 "~" H 9700 2550 50  0001 C CNN
	1    9700 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 6197F79C
P 9100 1950
F 0 "R12" H 9170 1996 50  0000 L CNN
F 1 "100kR" H 9170 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 1950 50  0001 C CNN
F 3 "~" H 9100 1950 50  0001 C CNN
	1    9100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2350 9100 2350
Wire Wire Line
	9100 2350 9100 2100
Wire Wire Line
	9100 1600 9100 1800
$Comp
L Device:C C12
U 1 1 61983604
P 9200 2450
F 0 "C12" V 9050 2500 50  0000 L CNN
F 1 "10nF" V 9150 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9238 2300 50  0001 C CNN
F 3 "~" H 9200 2450 50  0001 C CNN
	1    9200 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 2450 9050 2450
Wire Wire Line
	8800 2550 9450 2550
Wire Wire Line
	9350 2450 9450 2450
Wire Wire Line
	9450 2450 9450 2550
Connection ~ 9450 2550
Wire Wire Line
	9450 2550 9550 2550
$Comp
L power:+15V #PWR037
U 1 1 6198AFE9
P 8850 1600
F 0 "#PWR037" H 8850 1450 50  0001 C CNN
F 1 "+15V" H 8865 1773 50  0000 C CNN
F 2 "" H 8850 1600 50  0001 C CNN
F 3 "" H 8850 1600 50  0001 C CNN
	1    8850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2650 8850 2650
Wire Wire Line
	8850 2650 8850 1600
$Comp
L power:+5V #PWR046
U 1 1 6198C3D5
P 10000 1600
F 0 "#PWR046" H 10000 1450 50  0001 C CNN
F 1 "+5V" H 10015 1773 50  0000 C CNN
F 2 "" H 10000 1600 50  0001 C CNN
F 3 "" H 10000 1600 50  0001 C CNN
	1    10000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1600 10000 2550
Wire Wire Line
	10000 2550 9850 2550
$Comp
L Device:C C14
U 1 1 6198F1AD
P 10000 3100
F 0 "C14" H 10115 3146 50  0000 L CNN
F 1 "22uF" H 10115 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10038 2950 50  0001 C CNN
F 3 "~" H 10000 3100 50  0001 C CNN
	1    10000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 6198F782
P 10000 3450
F 0 "#PWR047" H 10000 3200 50  0001 C CNN
F 1 "GND" H 10005 3277 50  0000 C CNN
F 2 "" H 10000 3450 50  0001 C CNN
F 3 "" H 10000 3450 50  0001 C CNN
	1    10000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3250 10000 3450
Wire Wire Line
	10000 2950 10000 2550
Connection ~ 10000 2550
$Comp
L Device:C C10
U 1 1 6199CB96
P 8850 3100
F 0 "C10" H 8965 3146 50  0000 L CNN
F 1 "10uF" H 8965 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8888 2950 50  0001 C CNN
F 3 "~" H 8850 3100 50  0001 C CNN
	1    8850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2950 8850 2650
Connection ~ 8850 2650
$Comp
L power:GND #PWR038
U 1 1 6199E3AB
P 8850 3450
F 0 "#PWR038" H 8850 3200 50  0001 C CNN
F 1 "GND" H 8855 3277 50  0000 C CNN
F 2 "" H 8850 3450 50  0001 C CNN
F 3 "" H 8850 3450 50  0001 C CNN
	1    8850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3450 8850 3250
$Comp
L MM32_Periph:HX9193 U1
U 1 1 619D99CB
P 1800 5800
F 0 "U1" H 2075 6365 50  0000 C CNN
F 1 "HX9193" H 2075 6274 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2050 5650 50  0001 C CNN
F 3 "" H 1800 5800 50  0001 C CNN
	1    1800 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 619DB55C
P 1150 4800
F 0 "#PWR01" H 1150 4650 50  0001 C CNN
F 1 "+5V" H 1165 4973 50  0000 C CNN
F 2 "" H 1150 4800 50  0001 C CNN
F 3 "" H 1150 4800 50  0001 C CNN
	1    1150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 619DD295
P 1150 6550
F 0 "#PWR02" H 1150 6300 50  0001 C CNN
F 1 "GND" H 1155 6377 50  0000 C CNN
F 2 "" H 1150 6550 50  0001 C CNN
F 3 "" H 1150 6550 50  0001 C CNN
	1    1150 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4800 1150 5500
Wire Wire Line
	1150 5500 1500 5500
Wire Wire Line
	1500 5600 1150 5600
Wire Wire Line
	1150 5600 1150 6550
$Comp
L power:+5V #PWR03
U 1 1 619E07BF
P 1400 4800
F 0 "#PWR03" H 1400 4650 50  0001 C CNN
F 1 "+5V" H 1415 4973 50  0000 C CNN
F 2 "" H 1400 4800 50  0001 C CNN
F 3 "" H 1400 4800 50  0001 C CNN
	1    1400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4800 1400 5700
Wire Wire Line
	1400 5700 1500 5700
$Comp
L power:+3.3V #PWR09
U 1 1 619E23DE
P 2950 4800
F 0 "#PWR09" H 2950 4650 50  0001 C CNN
F 1 "+3.3V" H 2965 4973 50  0000 C CNN
F 2 "" H 2950 4800 50  0001 C CNN
F 3 "" H 2950 4800 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4800 2950 5500
Wire Wire Line
	2950 5500 2650 5500
$Comp
L power:GND #PWR010
U 1 1 619E4051
P 2950 6550
F 0 "#PWR010" H 2950 6300 50  0001 C CNN
F 1 "GND" H 2955 6377 50  0000 C CNN
F 2 "" H 2950 6550 50  0001 C CNN
F 3 "" H 2950 6550 50  0001 C CNN
	1    2950 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 619E4D63
P 2950 6050
F 0 "C1" H 3065 6096 50  0000 L CNN
F 1 "22uF" H 3065 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2988 5900 50  0001 C CNN
F 3 "~" H 2950 6050 50  0001 C CNN
	1    2950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5900 2950 5500
Connection ~ 2950 5500
Wire Wire Line
	2950 6200 2950 6550
$Comp
L Device:CP C7
U 1 1 61A046FF
P 7000 2550
F 0 "C7" H 7118 2596 50  0000 L CNN
F 1 "100uF" H 7118 2505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7038 2400 50  0001 C CNN
F 3 "~" H 7000 2550 50  0001 C CNN
	1    7000 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR023
U 1 1 61A04DB8
P 5650 1600
F 0 "#PWR023" H 5650 1450 50  0001 C CNN
F 1 "+15V" H 5665 1773 50  0000 C CNN
F 2 "" H 5650 1600 50  0001 C CNN
F 3 "" H 5650 1600 50  0001 C CNN
	1    5650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR027
U 1 1 61A0588C
P 7000 1600
F 0 "#PWR027" H 7000 1450 50  0001 C CNN
F 1 "+15V" H 7015 1773 50  0000 C CNN
F 2 "" H 7000 1600 50  0001 C CNN
F 3 "" H 7000 1600 50  0001 C CNN
	1    7000 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 61A05D88
P 5650 3450
F 0 "#PWR024" H 5650 3200 50  0001 C CNN
F 1 "GND" H 5655 3277 50  0000 C CNN
F 2 "" H 5650 3450 50  0001 C CNN
F 3 "" H 5650 3450 50  0001 C CNN
	1    5650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61A063BA
P 7000 3450
F 0 "#PWR028" H 7000 3200 50  0001 C CNN
F 1 "GND" H 7005 3277 50  0000 C CNN
F 2 "" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3450 7000 2700
Wire Wire Line
	7000 2400 7000 1600
Wire Wire Line
	5650 2700 5650 3450
Wire Wire Line
	5650 1600 5650 2400
$Comp
L Device:CP C5
U 1 1 619EE15D
P 5650 2550
F 0 "C5" H 5768 2596 50  0000 L CNN
F 1 "100uF" H 5768 2505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 5688 2400 50  0001 C CNN
F 3 "~" H 5650 2550 50  0001 C CNN
	1    5650 2550
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:REF3030 U2
U 1 1 619CE6E1
P 4750 5700
F 0 "U2" H 5000 6115 50  0000 C CNN
F 1 "REF3030" H 5000 6024 50  0000 C CIN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5050 5550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref3033.pdf" H 4850 5350 50  0001 C CIN
	1    4750 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 619CE6E7
P 4250 4800
AR Path="/6194FB75/619CE6E7" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/619CE6E7" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4250 4650 50  0001 C CNN
F 1 "+3.3V" H 4265 4973 50  0000 C CNN
F 2 "" H 4250 4800 50  0001 C CNN
F 3 "" H 4250 4800 50  0001 C CNN
	1    4250 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 619CE6ED
P 5700 4800
AR Path="/6194FB75/619CE6ED" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/619CE6ED" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 5700 4650 50  0001 C CNN
F 1 "+3V0" H 5715 4973 50  0000 C CNN
F 2 "" H 5700 4800 50  0001 C CNN
F 3 "" H 5700 4800 50  0001 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5550 5700 5550
Wire Wire Line
	5700 5550 5700 4800
Wire Wire Line
	4650 5550 4250 5550
Wire Wire Line
	4250 5550 4250 4800
$Comp
L power:GND #PWR?
U 1 1 619CE6F7
P 5000 6550
AR Path="/6194FB75/619CE6F7" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/619CE6F7" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 5000 6300 50  0001 C CNN
F 1 "GND" H 5005 6377 50  0000 C CNN
F 2 "" H 5000 6550 50  0001 C CNN
F 3 "" H 5000 6550 50  0001 C CNN
	1    5000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6550 5000 5800
$Comp
L Device:C C?
U 1 1 619CE6FE
P 5700 6050
AR Path="/6194FB75/619CE6FE" Ref="C?"  Part="1" 
AR Path="/6191448D/619CE6FE" Ref="C6"  Part="1" 
F 0 "C6" H 5815 6096 50  0000 L CNN
F 1 "100nF" H 5815 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5738 5900 50  0001 C CNN
F 3 "~" H 5700 6050 50  0001 C CNN
	1    5700 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619CE704
P 4250 6050
AR Path="/6194FB75/619CE704" Ref="C?"  Part="1" 
AR Path="/6191448D/619CE704" Ref="C4"  Part="1" 
F 0 "C4" H 4365 6096 50  0000 L CNN
F 1 "100nF" H 4365 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4288 5900 50  0001 C CNN
F 3 "~" H 4250 6050 50  0001 C CNN
	1    4250 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619CE70A
P 4250 6550
AR Path="/6194FB75/619CE70A" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/619CE70A" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 4250 6300 50  0001 C CNN
F 1 "GND" H 4255 6377 50  0000 C CNN
F 2 "" H 4250 6550 50  0001 C CNN
F 3 "" H 4250 6550 50  0001 C CNN
	1    4250 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619CE710
P 7600 6650
AR Path="/6194FB75/619CE710" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/619CE710" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7600 6400 50  0001 C CNN
F 1 "GND" H 7605 6477 50  0000 C CNN
F 2 "" H 7600 6650 50  0001 C CNN
F 3 "" H 7600 6650 50  0001 C CNN
	1    7600 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6550 5700 6200
Wire Wire Line
	5700 5900 5700 5550
Connection ~ 5700 5550
Wire Wire Line
	4250 5900 4250 5550
Connection ~ 4250 5550
Wire Wire Line
	4250 6200 4250 6550
$Comp
L power:+3.3V #PWR012
U 1 1 619F2357
P 3350 4800
F 0 "#PWR012" H 3350 4650 50  0001 C CNN
F 1 "+3.3V" H 3365 4973 50  0000 C CNN
F 2 "" H 3350 4800 50  0001 C CNN
F 3 "" H 3350 4800 50  0001 C CNN
	1    3350 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619F53C7
P 3350 5700
AR Path="/6194FB75/619F53C7" Ref="C?"  Part="1" 
AR Path="/6191448D/619F53C7" Ref="C2"  Part="1" 
F 0 "C2" H 3465 5746 50  0000 L CNN
F 1 "100nF" H 3465 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3388 5550 50  0001 C CNN
F 3 "~" H 3350 5700 50  0001 C CNN
	1    3350 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619F5F75
P 3350 6550
AR Path="/6194FB75/619F5F75" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/619F5F75" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3350 6300 50  0001 C CNN
F 1 "GND" H 3355 6377 50  0000 C CNN
F 2 "" H 3350 6550 50  0001 C CNN
F 3 "" H 3350 6550 50  0001 C CNN
	1    3350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6550 3350 5850
Wire Wire Line
	3350 5550 3350 4800
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 619DF0D1
P 1350 2600
F 0 "J1" H 1400 2400 50  0000 C CNN
F 1 "VIN" H 1350 2700 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT30PW-M_1x02_P2.50mm_Horizontal" H 1350 2600 50  0001 C CNN
F 3 "~" H 1350 2600 50  0001 C CNN
	1    1350 2600
	-1   0    0    1   
$EndComp
$Comp
L power:VIN #PWR04
U 1 1 619E19B6
P 1550 1600
F 0 "#PWR04" H 1550 1500 50  0001 C CNN
F 1 "VIN" H 1500 1750 50  0000 L CNN
F 2 "" H 1550 1600 50  0001 C CNN
F 3 "" H 1550 1600 50  0001 C CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 619E21E4
P 1550 3450
F 0 "#PWR05" H 1550 3200 50  0001 C CNN
F 1 "GND" H 1555 3277 50  0000 C CNN
F 2 "" H 1550 3450 50  0001 C CNN
F 3 "" H 1550 3450 50  0001 C CNN
	1    1550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2600 1550 3450
Wire Wire Line
	1550 2500 1550 1600
$Comp
L MM32_Periph:TPS54540 U3
U 1 1 61A0A152
P 7800 5800
F 0 "U3" H 7850 6350 50  0000 C CNN
F 1 "TPS54540" H 8050 5750 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 8150 5650 50  0001 C CNN
F 3 "" H 7850 6350 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61A7C317
P 7600 6200
F 0 "R10" H 7670 6246 50  0000 L CNN
F 1 "86.6kR" H 7670 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7530 6200 50  0001 C CNN
F 3 "~" H 7600 6200 50  0001 C CNN
	1    7600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 6650 7600 6350
Wire Wire Line
	7600 6050 7600 5700
Wire Wire Line
	7600 5700 7700 5700
$Comp
L Device:R R15
U 1 1 61A84719
P 9800 6150
F 0 "R15" H 9870 6196 50  0000 L CNN
F 1 "10kR" H 9870 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9730 6150 50  0001 C CNN
F 3 "~" H 9800 6150 50  0001 C CNN
	1    9800 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 61A84D3A
P 9800 5300
F 0 "R14" H 9870 5346 50  0000 L CNN
F 1 "82kR" H 9870 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9730 5300 50  0001 C CNN
F 3 "~" H 9800 5300 50  0001 C CNN
	1    9800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61A85270
P 9400 5900
F 0 "R13" H 9470 5946 50  0000 L CNN
F 1 "23.7kR" H 9470 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 5900 50  0001 C CNN
F 3 "~" H 9400 5900 50  0001 C CNN
	1    9400 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A856F1
P 9100 6150
AR Path="/6194FB75/61A856F1" Ref="C?"  Part="1" 
AR Path="/6191448D/61A856F1" Ref="C11"  Part="1" 
F 0 "C11" H 9215 6196 50  0000 L CNN
F 1 "32pF" H 9215 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9138 6000 50  0001 C CNN
F 3 "~" H 9100 6150 50  0001 C CNN
	1    9100 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A85C17
P 5700 6550
AR Path="/6194FB75/61A85C17" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61A85C17" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 5700 6300 50  0001 C CNN
F 1 "GND" H 5705 6377 50  0000 C CNN
F 2 "" H 5700 6550 50  0001 C CNN
F 3 "" H 5700 6550 50  0001 C CNN
	1    5700 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A8D05C
P 9400 6400
AR Path="/6194FB75/61A8D05C" Ref="C?"  Part="1" 
AR Path="/6191448D/61A8D05C" Ref="C13"  Part="1" 
F 0 "C13" H 9515 6446 50  0000 L CNN
F 1 "620pF" H 9515 6355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 6250 50  0001 C CNN
F 3 "~" H 9400 6400 50  0001 C CNN
	1    9400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 6250 9400 6050
Wire Wire Line
	9100 6000 9100 5600
$Comp
L power:GND #PWR?
U 1 1 61AAB92E
P 8850 6650
AR Path="/6194FB75/61AAB92E" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61AAB92E" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 8850 6400 50  0001 C CNN
F 1 "GND" H 8855 6477 50  0000 C CNN
F 2 "" H 8850 6650 50  0001 C CNN
F 3 "" H 8850 6650 50  0001 C CNN
	1    8850 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AAF7A2
P 9100 6650
AR Path="/6194FB75/61AAF7A2" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61AAF7A2" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 9100 6400 50  0001 C CNN
F 1 "GND" H 9105 6477 50  0000 C CNN
F 2 "" H 9100 6650 50  0001 C CNN
F 3 "" H 9100 6650 50  0001 C CNN
	1    9100 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AAFA9C
P 9400 6650
AR Path="/6194FB75/61AAFA9C" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61AAFA9C" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 9400 6400 50  0001 C CNN
F 1 "GND" H 9405 6477 50  0000 C CNN
F 2 "" H 9400 6650 50  0001 C CNN
F 3 "" H 9400 6650 50  0001 C CNN
	1    9400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 6650 9400 6550
Wire Wire Line
	9100 6300 9100 6650
NoConn ~ 7700 5600
$Comp
L power:+15V #PWR029
U 1 1 61ACBC8D
P 7150 4900
F 0 "#PWR029" H 7150 4750 50  0001 C CNN
F 1 "+15V" H 7165 5073 50  0000 C CNN
F 2 "" H 7150 4900 50  0001 C CNN
F 3 "" H 7150 4900 50  0001 C CNN
	1    7150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4900 7150 5500
Wire Wire Line
	7150 5500 7700 5500
$Comp
L Device:C C?
U 1 1 61AD18DE
P 8200 5050
AR Path="/6194FB75/61AD18DE" Ref="C?"  Part="1" 
AR Path="/6191448D/61AD18DE" Ref="C9"  Part="1" 
F 0 "C9" V 8050 5150 50  0000 L CNN
F 1 "100nF" V 8150 5150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8238 4900 50  0001 C CNN
F 3 "~" H 8200 5050 50  0001 C CNN
	1    8200 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 5400 7550 5400
Wire Wire Line
	7550 5400 7550 5050
Wire Wire Line
	7550 5050 8050 5050
Wire Wire Line
	9800 5450 9800 5700
Wire Wire Line
	8500 5700 9800 5700
Connection ~ 9800 5700
Wire Wire Line
	9800 5700 9800 6000
$Comp
L Device:L L1
U 1 1 61AE0697
P 9100 5400
F 0 "L1" V 9200 5500 50  0000 C CNN
F 1 "3.3uH" V 9050 5300 50  0000 C CNN
F 2 "Inductor_SMD:L_10.4x10.4_H4.8" H 9100 5400 50  0001 C CNN
F 3 "~" H 9100 5400 50  0001 C CNN
	1    9100 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:+7.5V #PWR043
U 1 1 61AEB29A
P 9500 4900
F 0 "#PWR043" H 9500 4750 50  0001 C CNN
F 1 "+7.5V" H 9515 5073 50  0000 C CNN
F 2 "" H 9500 4900 50  0001 C CNN
F 3 "" H 9500 4900 50  0001 C CNN
	1    9500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5400 9500 5400
Wire Wire Line
	9500 5400 9500 4900
$Comp
L power:+7.5V #PWR044
U 1 1 61AEF587
P 9800 4900
F 0 "#PWR044" H 9800 4750 50  0001 C CNN
F 1 "+7.5V" H 9815 5073 50  0000 C CNN
F 2 "" H 9800 4900 50  0001 C CNN
F 3 "" H 9800 4900 50  0001 C CNN
	1    9800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4900 9800 5150
$Comp
L power:GND #PWR?
U 1 1 61AFEA84
P 9800 6650
AR Path="/6194FB75/61AFEA84" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61AFEA84" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 9800 6400 50  0001 C CNN
F 1 "GND" H 9805 6477 50  0000 C CNN
F 2 "" H 9800 6650 50  0001 C CNN
F 3 "" H 9800 6650 50  0001 C CNN
	1    9800 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 6300 9800 6650
Wire Wire Line
	8350 5050 8850 5050
Wire Wire Line
	8850 5050 8850 5400
Connection ~ 8850 5400
Wire Wire Line
	8850 5400 8500 5400
$Comp
L Device:CP C8
U 1 1 61B13C97
P 7150 6200
F 0 "C8" H 7268 6246 50  0000 L CNN
F 1 "100uF" H 7268 6155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7188 6050 50  0001 C CNN
F 3 "~" H 7150 6200 50  0001 C CNN
	1    7150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5500 7150 6050
Connection ~ 7150 5500
$Comp
L power:GND #PWR?
U 1 1 61B1F8FE
P 7150 6650
AR Path="/6194FB75/61B1F8FE" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61B1F8FE" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 7150 6400 50  0001 C CNN
F 1 "GND" H 7155 6477 50  0000 C CNN
F 2 "" H 7150 6650 50  0001 C CNN
F 3 "" H 7150 6650 50  0001 C CNN
	1    7150 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6650 7150 6350
$Comp
L Device:CP C15
U 1 1 61C1A142
P 10100 5850
F 0 "C15" H 10218 5896 50  0000 L CNN
F 1 "100uF" H 10218 5805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 10138 5700 50  0001 C CNN
F 3 "~" H 10100 5850 50  0001 C CNN
	1    10100 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 61C1A14E
P 10100 6650
F 0 "#PWR049" H 10100 6400 50  0001 C CNN
F 1 "GND" H 10105 6477 50  0000 C CNN
F 2 "" H 10100 6650 50  0001 C CNN
F 3 "" H 10100 6650 50  0001 C CNN
	1    10100 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6650 10100 6000
Wire Wire Line
	10100 5700 10100 4900
$Comp
L power:+7.5V #PWR048
U 1 1 61C23E36
P 10100 4900
F 0 "#PWR048" H 10100 4750 50  0001 C CNN
F 1 "+7.5V" H 10115 5073 50  0000 C CNN
F 2 "" H 10100 4900 50  0001 C CNN
F 3 "" H 10100 4900 50  0001 C CNN
	1    10100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 61A0EAE7
P 10350 3450
F 0 "#PWR051" H 10350 3200 50  0001 C CNN
F 1 "GND" H 10355 3277 50  0000 C CNN
F 2 "" H 10350 3450 50  0001 C CNN
F 3 "" H 10350 3450 50  0001 C CNN
	1    10350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2700 10350 3450
Wire Wire Line
	10350 1600 10350 2400
$Comp
L Device:CP C16
U 1 1 61A0EAEF
P 10350 2550
F 0 "C16" H 10468 2596 50  0000 L CNN
F 1 "100uF" H 10468 2505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 10388 2400 50  0001 C CNN
F 3 "~" H 10350 2550 50  0001 C CNN
	1    10350 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR050
U 1 1 61A13DFC
P 10350 1600
F 0 "#PWR050" H 10350 1450 50  0001 C CNN
F 1 "+5V" H 10365 1773 50  0000 C CNN
F 2 "" H 10350 1600 50  0001 C CNN
F 3 "" H 10350 1600 50  0001 C CNN
	1    10350 1600
	1    0    0    -1  
$EndComp
$Comp
L MM32_Periph:SVM1550UB D1
U 1 1 61A326FE
P 8800 5950
F 0 "D1" V 8900 5800 50  0000 L CNN
F 1 "SVM1550UB" V 9000 5500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-277B" H 8900 6100 50  0001 C CNN
F 3 "" H 8900 6100 50  0001 C CNN
	1    8800 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 5400 8850 5950
Wire Wire Line
	8850 6250 8850 6650
$Comp
L power:GND #PWR?
U 1 1 61A47EBD
P 8600 6650
AR Path="/6194FB75/61A47EBD" Ref="#PWR?"  Part="1" 
AR Path="/6191448D/61A47EBD" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 8600 6400 50  0001 C CNN
F 1 "GND" H 8605 6477 50  0000 C CNN
F 2 "" H 8600 6650 50  0001 C CNN
F 3 "" H 8600 6650 50  0001 C CNN
	1    8600 6650
	1    0    0    -1  
$EndComp
Connection ~ 9100 5600
Wire Wire Line
	9100 5600 9400 5600
Wire Wire Line
	8500 5600 9100 5600
Wire Wire Line
	9400 5750 9400 5600
Wire Wire Line
	8850 5400 8950 5400
Wire Wire Line
	8500 5500 8600 5500
Wire Wire Line
	8600 5500 8600 6650
Wire Notes Line
	900  850  6150 850 
Wire Notes Line
	6150 850  6150 3850
Wire Notes Line
	6150 3850 900  3850
Wire Notes Line
	900  3850 900  850 
Wire Notes Line
	6450 850  10850 850 
Wire Notes Line
	10850 850  10850 3850
Wire Notes Line
	10850 3850 6450 3850
Wire Notes Line
	6450 3850 6450 850 
Text Notes 1200 1200 0    150  ~ 0
Electronic Switch
Wire Notes Line
	6450 4050 10850 4050
Wire Notes Line
	10850 4050 10850 6950
Wire Notes Line
	10850 6950 6450 6950
Wire Notes Line
	6450 6950 6450 4050
Wire Notes Line
	900  6950 6150 6950
Wire Notes Line
	6150 6950 6150 4050
Wire Notes Line
	6150 4050 900  4050
Wire Notes Line
	900  4050 900  6950
Text Notes 1250 4400 0    150  ~ 0
3.3V Power Supply & Reference Voltage
Text Notes 6750 4400 0    150  ~ 0
Servo Power Supply
Text Notes 6750 1200 0    150  ~ 0
5V Power Supply
Wire Wire Line
	3050 3100 3050 3000
Connection ~ 3050 3000
Wire Wire Line
	3050 3000 3300 3000
$Comp
L Device:R R7
U 1 1 61B05DF5
P 5150 3000
F 0 "R7" H 5220 3046 50  0000 L CNN
F 1 "1kR" H 5220 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 3000 50  0001 C CNN
F 3 "~" H 5150 3000 50  0001 C CNN
	1    5150 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61B06482
P 5150 2150
F 0 "R6" H 5220 2196 50  0000 L CNN
F 1 "10kR" H 5220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 2150 50  0001 C CNN
F 3 "~" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61B06BFA
P 5150 3450
F 0 "#PWR022" H 5150 3200 50  0001 C CNN
F 1 "GND" H 5155 3277 50  0000 C CNN
F 2 "" H 5150 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0001 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR021
U 1 1 61B0713F
P 5150 1600
F 0 "#PWR021" H 5150 1450 50  0001 C CNN
F 1 "+15V" H 5165 1773 50  0000 C CNN
F 2 "" H 5150 1600 50  0001 C CNN
F 3 "" H 5150 1600 50  0001 C CNN
	1    5150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VIN #PWR018
U 1 1 61B07A32
P 4750 1600
F 0 "#PWR018" H 4750 1500 50  0001 C CNN
F 1 "VIN" H 4700 1750 50  0000 L CNN
F 2 "" H 4750 1600 50  0001 C CNN
F 3 "" H 4750 1600 50  0001 C CNN
	1    4750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1600 4750 2000
Wire Wire Line
	5150 1600 5150 2000
Wire Wire Line
	5150 2300 5150 2550
Wire Wire Line
	5150 3150 5150 3450
Text HLabel 5250 2550 2    50   Output ~ 0
VBAT
Wire Wire Line
	5250 2550 5150 2550
Connection ~ 5150 2550
Wire Wire Line
	5150 2550 5150 2850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61A86577
P 1650 1600
F 0 "#FLG0101" H 1650 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1773 50  0001 C CNN
F 2 "" H 1650 1600 50  0001 C CNN
F 3 "~" H 1650 1600 50  0001 C CNN
	1    1650 1600
	1    0    0    -1  
$EndComp
Connection ~ 1550 1600
Wire Wire Line
	1550 1600 1650 1600
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61A97945
P 4350 1600
F 0 "#FLG0102" H 4350 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 1773 50  0001 C CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "~" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1600 4250 1600
Connection ~ 4250 1600
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61AA8539
P 10200 4900
F 0 "#FLG0103" H 10200 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 10200 5073 50  0001 C CNN
F 2 "" H 10200 4900 50  0001 C CNN
F 3 "~" H 10200 4900 50  0001 C CNN
	1    10200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4900 10100 4900
Connection ~ 10100 4900
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61AB1F2C
P 10100 1600
F 0 "#FLG0104" H 10100 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 10100 1773 50  0001 C CNN
F 2 "" H 10100 1600 50  0001 C CNN
F 3 "~" H 10100 1600 50  0001 C CNN
	1    10100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1600 10000 1600
Connection ~ 10000 1600
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 61C90DF1
P 1650 3450
F 0 "#FLG0105" H 1650 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 3623 50  0001 C CNN
F 2 "" H 1650 3450 50  0001 C CNN
F 3 "~" H 1650 3450 50  0001 C CNN
	1    1650 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 3450 1550 3450
Connection ~ 1550 3450
$EndSCHEMATC
