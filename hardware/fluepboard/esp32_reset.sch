EESchema Schematic File Version 4
LIBS:fluepdot-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1350 2550 0    50   ~ 10
Auto program\nDTR RTS EN IO0\n 1  1  1  1\n 0  0  1  1\n 1  0  0  1\n 0  1  1  0\n
$Comp
L power:GND #PWR?
U 1 1 5CCCFD84
P 3000 1500
F 0 "#PWR?" H 3000 1250 50  0001 C CNN
F 1 "GND" H 3005 1327 50  0000 C CNN
F 2 "" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5CCD0241
P 3000 1250
F 0 "R11" H 3070 1296 50  0000 L CNN
F 1 "10k" H 3070 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 1250 50  0001 C CNN
F 3 "~" H 3000 1250 50  0001 C CNN
F 4 "RC0805FR-0710KL" H 3000 1250 50  0001 C CNN "Octopart"
F 5 "C25804" H 3000 1250 50  0001 C CNN "LCSC"
F 6 "0603WAF1002T5E" H 3000 1250 50  0001 C CNN "Manufacturer"
F 7 "0" H 3000 1250 50  0001 C CNN "Extended Part"
F 8 "CHIP RESISTOR - SURFACE MOUNT 10KOHMS ±1% 1/10W 0603 ROHS" H 3000 1250 50  0001 C CNN "Description"
	1    3000 1250
	1    0    0    -1  
$EndComp
Text HLabel 3000 1000 1    50   Input ~ 10
GPIO2
Wire Wire Line
	3000 1100 3000 1000
Wire Wire Line
	3000 1500 3000 1400
Text HLabel 1150 850  0    50   Input ~ 10
DTR
Text HLabel 1150 1250 0    50   Input ~ 10
RTS
$Comp
L Device:R R5
U 1 1 5D99E9E6
P 1400 1250
F 0 "R5" V 1193 1250 50  0000 C CNN
F 1 "10k" V 1284 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 1250 50  0001 C CNN
F 3 "~" H 1400 1250 50  0001 C CNN
F 4 "CHIP RESISTOR - SURFACE MOUNT 10KOHMS ±1% 1/10W 0603 ROHS" H 1400 1250 50  0001 C CNN "Description"
F 5 "0" H 1400 1250 50  0001 C CNN "Extended Part"
F 6 "C25804" H 1400 1250 50  0001 C CNN "LCSC"
F 7 "0603WAF1002T5E" H 1400 1250 50  0001 C CNN "Manufacturer"
	1    1400 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 850  1450 850 
Wire Wire Line
	1150 1250 1250 1250
Wire Wire Line
	1550 1250 1650 1250
Wire Wire Line
	1650 1250 1650 1150
Text HLabel 2100 850  2    50   Input ~ 10
GPIO0
Wire Wire Line
	1850 850  2100 850 
$Comp
L Device:R R21
U 1 1 5D9A1B1E
P 1900 1300
F 0 "R21" V 1693 1300 50  0000 C CNN
F 1 "10k" V 1784 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1830 1300 50  0001 C CNN
F 3 "~" H 1900 1300 50  0001 C CNN
F 4 "CHIP RESISTOR - SURFACE MOUNT 10KOHMS ±1% 1/10W 0603 ROHS" H 1900 1300 50  0001 C CNN "Description"
F 5 "0" H 1900 1300 50  0001 C CNN "Extended Part"
F 6 "C25804" H 1900 1300 50  0001 C CNN "LCSC"
F 7 "0603WAF1002T5E" H 1900 1300 50  0001 C CNN "Manufacturer"
	1    1900 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1400 1650 1300
Wire Wire Line
	1650 1300 1750 1300
Text HLabel 2150 1300 2    50   Input ~ 10
DTR
Wire Wire Line
	2050 1300 2150 1300
Text HLabel 2150 1700 2    50   Input ~ 10
RTS
Wire Wire Line
	1850 1700 2150 1700
Text HLabel 1150 1700 0    50   Input ~ 10
EN
Wire Wire Line
	1150 1700 1450 1700
$Comp
L Device:Q_NPN_BEC Q6
U 1 1 5D9AA5F7
P 1650 950
F 0 "Q6" V 1978 950 50  0000 C CNN
F 1 "SS8050" V 1887 950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 1050 50  0001 C CNN
F 3 "~" H 1650 950 50  0001 C CNN
F 4 "TRANSISTORS (NPN/PNP) NPN 1.5A 25V SOT-23(SOT-23-3) ROHS" H 1650 950 50  0001 C CNN "Description"
F 5 "0" H 1650 950 50  0001 C CNN "Extended Part"
F 6 "C2150" H 1650 950 50  0001 C CNN "LCSC"
	1    1650 950 
	0    1    -1   0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q7
U 1 1 5D9ADB8D
P 1650 1600
F 0 "Q7" V 1885 1600 50  0000 C CNN
F 1 "SS8050" V 1976 1600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 1700 50  0001 C CNN
F 3 "~" H 1650 1600 50  0001 C CNN
F 4 "TRANSISTORS (NPN/PNP) NPN 1.5A 25V SOT-23(SOT-23-3) ROHS" H 1650 1600 50  0001 C CNN "Description"
F 5 "0" H 1650 1600 50  0001 C CNN "Extended Part"
F 6 "C2150" H 1650 1600 50  0001 C CNN "LCSC"
	1    1650 1600
	0    -1   1    0   
$EndComp
$EndSCHEMATC
