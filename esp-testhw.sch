EESchema Schematic File Version 2
LIBS:freetronics_schematic
LIBS:ESP8266
LIBS:esp-testhw
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:esp-testhw-cache
EELAYER 25 0
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
L STM32F042K U?
U 1 1 5620C2C4
P 3250 5200
F 0 "U?" H 4500 4000 60  0000 C CNN
F 1 "STM32F042K" H 4300 4150 60  0000 C CNN
F 2 "FT:QFP32_5mm_0.5mm" H 4000 4000 39  0000 C CNN
F 3 "" H 2950 5600 60  0000 C CNN
	1    3250 5200
	1    0    0    -1  
$EndComp
$Comp
L USB_5PIN_SHELL P?
U 1 1 56305F6A
P 1450 1450
F 0 "P?" H 1375 1700 60  0000 C CNN
F 1 "USB_5PIN_SHELL" H 1300 1100 60  0001 L CNN
F 2 "FT:USB-MICRO_TH_4PEGS" H 1200 1100 31  0000 L CNN
F 3 "" H 1450 1450 60  0000 C CNN
	1    1450 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56305FEF
P 1950 950
F 0 "#PWR?" H 1950 800 50  0001 C CNN
F 1 "+5V" H 1950 1090 50  0000 C CNN
F 2 "" H 1950 950 60  0000 C CNN
F 3 "" H 1950 950 60  0000 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33CTR U?
U 1 1 56306091
P 3300 1350
F 0 "U?" H 3300 1600 40  0000 C CNN
F 1 "LD1117S33CTR" H 3300 1550 40  0000 C CNN
F 2 "SOT-223" H 3300 1450 40  0000 C CNN
F 3 "" H 3300 1350 60  0000 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1300 2900 1300
Wire Wire Line
	1950 950  1950 1300
Connection ~ 1950 1300
Wire Wire Line
	1650 1400 2150 1400
Wire Wire Line
	1650 1500 2150 1500
Wire Wire Line
	3700 1300 3950 1300
Wire Wire Line
	3950 1300 3950 900 
$Comp
L +3.3V #PWR?
U 1 1 5630644C
P 3950 900
F 0 "#PWR?" H 3950 750 50  0001 C CNN
F 1 "+3.3V" H 3950 1040 50  0000 C CNN
F 2 "" H 3950 900 60  0000 C CNN
F 3 "" H 3950 900 60  0000 C CNN
	1    3950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1700 1950 1700
Wire Wire Line
	1950 1700 1950 2000
$Comp
L GND #PWR?
U 1 1 56306479
P 1950 2000
F 0 "#PWR?" H 1950 1750 50  0001 C CNN
F 1 "GND" H 1950 1850 50  0000 C CNN
F 2 "" H 1950 2000 60  0000 C CNN
F 3 "" H 1950 2000 60  0000 C CNN
	1    1950 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56306497
P 1150 2050
F 0 "#PWR?" H 1150 1800 50  0001 C CNN
F 1 "GND" H 1150 1900 50  0000 C CNN
F 2 "" H 1150 2050 60  0000 C CNN
F 3 "" H 1150 2050 60  0000 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2050 1150 1950
Text Label 1700 1400 0    60   ~ 0
USB_D-
Text Label 1700 1500 0    60   ~ 0
USB_D+
Text Label 1600 5700 2    60   ~ 0
USB_D-
Wire Wire Line
	1650 4600 1250 4600
Wire Wire Line
	1650 4700 1250 4700
Wire Wire Line
	1650 4800 1250 4800
Wire Wire Line
	1650 4900 1250 4900
Wire Wire Line
	1650 5000 1250 5000
Wire Wire Line
	1650 5100 1250 5100
Wire Wire Line
	1650 5200 1250 5200
Wire Wire Line
	1650 5300 1250 5300
Wire Wire Line
	1650 5400 1250 5400
Wire Wire Line
	1650 5500 1250 5500
Wire Wire Line
	1650 5600 1250 5600
Wire Wire Line
	1650 5700 1250 5700
Wire Wire Line
	1650 5800 1250 5800
Wire Wire Line
	1650 5900 1250 5900
Wire Wire Line
	1650 6000 1250 6000
Wire Wire Line
	1650 6100 1250 6100
Text Label 1600 5800 2    60   ~ 0
USB_D+
Wire Wire Line
	1650 6400 1250 6400
Text Label 1300 6400 0    60   ~ 0
SWD_~RST
Text Label 1250 5900 0    60   ~ 0
SWDIO
Text Label 1250 6000 0    60   ~ 0
SWCLK
NoConn ~ 1650 1600
$Comp
L CONN_01X04 P?
U 1 1 56306A52
P 1800 3000
F 0 "P?" H 1800 3250 50  0000 C CNN
F 1 "CONN_01X04" V 1900 3000 50  0000 C CNN
F 2 "FT:1X04" H 1850 2700 39  0000 C CNN
F 3 "" H 1800 3000 60  0000 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2850 1300 2850
Wire Wire Line
	1300 2850 1300 2700
$Comp
L +3.3V #PWR?
U 1 1 56306B97
P 1300 2700
F 0 "#PWR?" H 1300 2550 50  0001 C CNN
F 1 "+3.3V" H 1300 2840 50  0000 C CNN
F 2 "" H 1300 2700 60  0000 C CNN
F 3 "" H 1300 2700 60  0000 C CNN
	1    1300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2950 1300 2950
Wire Wire Line
	1600 3050 1300 3050
Wire Wire Line
	1600 3150 1300 3150
$Comp
L GND #PWR?
U 1 1 56306BF9
P 1300 3350
F 0 "#PWR?" H 1300 3100 50  0001 C CNN
F 1 "GND" H 1300 3200 50  0000 C CNN
F 2 "" H 1300 3350 60  0000 C CNN
F 3 "" H 1300 3350 60  0000 C CNN
	1    1300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3150 1300 3350
Text Label 1300 2950 0    60   ~ 0
SWCLK
Text Label 1300 3050 0    60   ~ 0
SWDIO
Text Notes 1000 2450 0    60   ~ 0
SWD Interface (STLink pinout)
Text Notes 1100 700  0    60   ~ 0
USB Interface (serial, power)\n
Text Notes 7800 750  0    177  ~ 0
Test Device A
Text Notes 7800 4500 0    177  ~ 0
Test Device B
$Comp
L CAP C?
U 1 1 563169F8
P 2800 1550
F 0 "C?" H 2850 1650 50  0000 L CNN
F 1 "22uF 10V" H 2850 1450 50  0000 L CNN
F 2 "FT:1210_CAP" H 3000 1350 39  0000 C CNN
F 3 "" H 2800 1550 60  0000 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1350 2800 1300
Connection ~ 2800 1300
$Comp
L GND #PWR?
U 1 1 56316BE1
P 3300 2000
F 0 "#PWR?" H 3300 1750 50  0001 C CNN
F 1 "GND" H 3300 1850 50  0000 C CNN
F 2 "" H 3300 2000 60  0000 C CNN
F 3 "" H 3300 2000 60  0000 C CNN
	1    3300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1350 3750 1300
Connection ~ 3750 1300
$Comp
L CAP C?
U 1 1 563168AB
P 3750 1550
F 0 "C?" H 3800 1650 50  0000 L CNN
F 1 "22uF 10V" H 3800 1450 50  0000 L CNN
F 2 "FT:1210_CAP" H 3950 1350 39  0000 C CNN
F 3 "" H 3750 1550 60  0000 C CNN
	1    3750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1750 3750 1850
Wire Wire Line
	3750 1850 3300 1850
Wire Wire Line
	3300 1600 3300 2000
Wire Wire Line
	2800 1750 2800 1900
Wire Wire Line
	2800 1900 3300 1900
Connection ~ 3300 1900
Connection ~ 3300 1850
$Comp
L ESP-12E U?
U 1 1 5631671A
P 8750 1650
F 0 "U?" H 8750 1550 50  0000 C CNN
F 1 "ESP-12E" H 8750 1750 50  0000 C CNN
F 2 "ESP:ESP-12E" H 8750 1650 39  0000 C CNN
F 3 "" H 8750 1650 50  0001 C CNN
	1    8750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1350 7450 1350
Wire Wire Line
	7850 1450 7450 1450
Wire Wire Line
	7850 1550 7450 1550
Wire Wire Line
	7850 1650 7450 1650
Wire Wire Line
	7850 1750 7450 1750
Wire Wire Line
	7850 1850 7450 1850
Wire Wire Line
	7850 1950 7450 1950
Wire Wire Line
	9650 1350 10150 1350
Wire Wire Line
	9650 1450 10150 1450
Wire Wire Line
	9650 1550 10150 1550
Wire Wire Line
	9650 1650 10150 1650
Wire Wire Line
	9650 1750 10150 1750
Wire Wire Line
	9650 1850 10150 1850
Wire Wire Line
	9650 1950 10150 1950
Wire Wire Line
	9650 2050 10150 2050
Text Label 9650 1850 0    60   ~ 0
A_UART_USBTX
Text Label 9650 1450 0    60   ~ 0
A_UART_USBRX
Text Label 7450 1950 0    60   ~ 0
A_UART_RX
Text Label 9650 1950 0    60   ~ 0
A_UART_TX
Text Label 7450 1450 0    60   ~ 0
A_AIN
Text Label 7450 1350 0    60   ~ 0
A_~RST
Text Label 7450 1550 0    60   ~ 0
A_ENABLE
Text Label 9650 1750 0    60   ~ 0
A_GPIO0
Text Label 9650 1650 0    60   ~ 0
A_GPIO4_SCL
Text Label 9650 1550 0    60   ~ 0
A_GPIO5_SDA
Wire Wire Line
	10150 2050 10150 2650
$Comp
L GND #PWR?
U 1 1 5631751A
P 10150 2650
F 0 "#PWR?" H 10150 2400 50  0001 C CNN
F 1 "GND" H 10150 2500 50  0000 C CNN
F 2 "" H 10150 2650 60  0000 C CNN
F 3 "" H 10150 2650 60  0000 C CNN
	1    10150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2050 6350 1850
$Comp
L +3.3V #PWR?
U 1 1 5631769D
P 6350 1850
F 0 "#PWR?" H 6350 1700 50  0001 C CNN
F 1 "+3.3V" H 6350 1990 50  0000 C CNN
F 2 "" H 6350 1850 60  0000 C CNN
F 3 "" H 6350 1850 60  0000 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 56317811
P 6850 2050
F 0 "L?" H 6750 2150 40  0000 C CNN
F 1 "RF FERRITE" H 6850 2000 40  0000 C CNN
F 2 "" H 6850 2050 60  0000 C CNN
F 3 "" H 6850 2050 60  0000 C CNN
	1    6850 2050
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 56317877
P 7700 2300
F 0 "C?" H 7750 2400 50  0000 L CNN
F 1 "100nF 6.3V" H 7750 2200 50  0000 L CNN
F 2 "FT:0603_CAP" H 7900 2100 39  0000 C CNN
F 3 "" H 7700 2300 60  0000 C CNN
	1    7700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2050 6550 2050
Wire Wire Line
	7150 2050 7850 2050
Connection ~ 7700 2050
Text Label 7450 1650 0    60   ~ 0
A_GPIO16
Text Label 7450 1750 0    60   ~ 0
A_GPIO14
Text Label 7450 1850 0    60   ~ 0
A_GPIO12
Wire Wire Line
	7700 2500 7700 2650
$Comp
L GND #PWR?
U 1 1 56317DB5
P 7700 2650
F 0 "#PWR?" H 7700 2400 50  0001 C CNN
F 1 "GND" H 7700 2500 50  0000 C CNN
F 2 "" H 7700 2650 60  0000 C CNN
F 3 "" H 7700 2650 60  0000 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 56317F18
P 7250 2300
F 0 "C?" H 7300 2400 50  0000 L CNN
F 1 "22uF 10V" H 7300 2200 50  0000 L CNN
F 2 "FT:1210_CAP" H 7450 2100 39  0000 C CNN
F 3 "" H 7250 2300 60  0000 C CNN
	1    7250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2050 7250 2100
Connection ~ 7250 2050
Wire Wire Line
	7250 2500 7250 2650
$Comp
L GND #PWR?
U 1 1 56318159
P 7250 2650
F 0 "#PWR?" H 7250 2400 50  0001 C CNN
F 1 "GND" H 7250 2500 50  0000 C CNN
F 2 "" H 7250 2650 60  0000 C CNN
F 3 "" H 7250 2650 60  0000 C CNN
	1    7250 2650
	1    0    0    -1  
$EndComp
Text Notes 6450 2350 0    39   ~ 0
Note: Possible 1 cap\ncan be eliminated
Wire Wire Line
	7700 2100 7700 2050
Text Label 9650 1350 0    60   ~ 0
A_GPIO1
NoConn ~ 8500 2550
NoConn ~ 8600 2550
NoConn ~ 8700 2550
NoConn ~ 8800 2550
NoConn ~ 8900 2550
NoConn ~ 9000 2550
$Comp
L ESP-12E U?
U 1 1 56319075
P 8900 5300
F 0 "U?" H 8900 5200 50  0000 C CNN
F 1 "ESP-12E" H 8900 5400 50  0000 C CNN
F 2 "ESP:ESP-12E" H 8900 5300 39  0000 C CNN
F 3 "" H 8900 5300 50  0001 C CNN
	1    8900 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5000 7600 5000
Wire Wire Line
	8000 5100 7600 5100
Wire Wire Line
	8000 5200 7600 5200
Wire Wire Line
	8000 5300 7600 5300
Wire Wire Line
	8000 5400 7600 5400
Wire Wire Line
	8000 5500 7600 5500
Wire Wire Line
	8000 5600 7600 5600
Wire Wire Line
	9800 5000 10300 5000
Wire Wire Line
	9800 5100 10300 5100
Wire Wire Line
	9800 5200 10300 5200
Wire Wire Line
	9800 5300 10300 5300
Wire Wire Line
	9800 5400 10300 5400
Wire Wire Line
	9800 5500 10300 5500
Wire Wire Line
	9800 5600 10300 5600
Wire Wire Line
	9800 5700 10300 5700
Text Label 9800 5500 0    60   ~ 0
B_UART_USBTX
Text Label 9800 5100 0    60   ~ 0
B_UART_USBRX
Text Label 7600 5600 0    60   ~ 0
B_UART_RX
Text Label 9800 5600 0    60   ~ 0
B_UART_TX
Text Label 7600 5100 0    60   ~ 0
B_AIN
Text Label 7600 5000 0    60   ~ 0
B_~RST
Text Label 7600 5200 0    60   ~ 0
B_ENABLE
Text Label 9800 5400 0    60   ~ 0
B_GPIO0
Text Label 9800 5300 0    60   ~ 0
B_GPIO4
Text Label 9800 5200 0    60   ~ 0
B_GPIO5
Wire Wire Line
	10300 5700 10300 6300
$Comp
L GND #PWR?
U 1 1 56319095
P 10300 6300
F 0 "#PWR?" H 10300 6050 50  0001 C CNN
F 1 "GND" H 10300 6150 50  0000 C CNN
F 2 "" H 10300 6300 60  0000 C CNN
F 3 "" H 10300 6300 60  0000 C CNN
	1    10300 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5700 6500 5500
$Comp
L +3.3V #PWR?
U 1 1 5631909C
P 6500 5500
F 0 "#PWR?" H 6500 5350 50  0001 C CNN
F 1 "+3.3V" H 6500 5640 50  0000 C CNN
F 2 "" H 6500 5500 60  0000 C CNN
F 3 "" H 6500 5500 60  0000 C CNN
	1    6500 5500
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 563190A2
P 7000 5700
F 0 "L?" H 6900 5800 40  0000 C CNN
F 1 "RF FERRITE" H 7000 5650 40  0000 C CNN
F 2 "" H 7000 5700 60  0000 C CNN
F 3 "" H 7000 5700 60  0000 C CNN
	1    7000 5700
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 563190A8
P 7850 5950
F 0 "C?" H 7900 6050 50  0000 L CNN
F 1 "100nF 6.3V" H 7900 5850 50  0000 L CNN
F 2 "FT:0603_CAP" H 8050 5750 39  0000 C CNN
F 3 "" H 7850 5950 60  0000 C CNN
	1    7850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5700 6700 5700
Wire Wire Line
	7300 5700 8000 5700
Connection ~ 7850 5700
Text Label 7600 5300 0    60   ~ 0
B_GPIO16
Text Label 7600 5400 0    60   ~ 0
B_GPIO14
Text Label 7600 5500 0    60   ~ 0
B_GPIO12
Wire Wire Line
	7850 6150 7850 6300
$Comp
L GND #PWR?
U 1 1 563190B5
P 7850 6300
F 0 "#PWR?" H 7850 6050 50  0001 C CNN
F 1 "GND" H 7850 6150 50  0000 C CNN
F 2 "" H 7850 6300 60  0000 C CNN
F 3 "" H 7850 6300 60  0000 C CNN
	1    7850 6300
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 563190BB
P 7400 5950
F 0 "C?" H 7450 6050 50  0000 L CNN
F 1 "22uF 10V" H 7450 5850 50  0000 L CNN
F 2 "FT:1210_CAP" H 7600 5750 39  0000 C CNN
F 3 "" H 7400 5950 60  0000 C CNN
	1    7400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5700 7400 5750
Connection ~ 7400 5700
Wire Wire Line
	7400 6150 7400 6300
$Comp
L GND #PWR?
U 1 1 563190C4
P 7400 6300
F 0 "#PWR?" H 7400 6050 50  0001 C CNN
F 1 "GND" H 7400 6150 50  0000 C CNN
F 2 "" H 7400 6300 60  0000 C CNN
F 3 "" H 7400 6300 60  0000 C CNN
	1    7400 6300
	1    0    0    -1  
$EndComp
Text Notes 6600 6000 0    39   ~ 0
Note: Possible 1 cap\ncan be eliminated
Wire Wire Line
	7850 5750 7850 5700
Text Label 9800 5000 0    60   ~ 0
B_GPIO1
NoConn ~ 8650 6200
NoConn ~ 8750 6200
NoConn ~ 8850 6200
NoConn ~ 8950 6200
NoConn ~ 9050 6200
NoConn ~ 9150 6200
$Comp
L R_PACK4 R?
U 1 1 56319BA9
P 8700 3400
F 0 "R?" H 8700 3850 40  0000 C CNN
F 1 "220R" H 8700 3350 40  0000 C CNN
F 2 "FT:RES_CAY16" H 8700 3300 39  0001 C CNN
F 3 "" H 8700 3400 60  0000 C CNN
	1    8700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3050 8250 3050
Wire Wire Line
	8500 3150 8250 3150
Wire Wire Line
	8500 3250 8250 3250
Wire Wire Line
	8500 3350 8250 3350
Wire Wire Line
	8900 3050 9150 3050
Wire Wire Line
	8900 3150 9150 3150
Wire Wire Line
	8900 3250 9150 3250
Wire Wire Line
	8900 3350 9150 3350
Text Label 4300 3550 0    60   ~ 0
A_~RST
Text Label 4300 3700 0    60   ~ 0
B_~RST
Text Label 4300 4050 0    60   ~ 0
A_GPIO0
Text Label 1550 5600 2    60   ~ 0
A_UART_USBTX
Text Label 1550 5500 2    60   ~ 0
A_UART_USBRX
Text Label 1550 4800 2    60   ~ 0
B_UART_USBRX
Text Label 1550 4900 2    60   ~ 0
B_UART_USBTX
Text Label 5400 900  0    60   ~ 0
A_AIN
NoConn ~ 7600 5100
Text Label 8500 3350 2    60   ~ 0
A_GPIO16
Text Label 8500 3250 2    60   ~ 0
A_GPIO14
Text Label 8500 3150 2    60   ~ 0
A_GPIO12
Text Label 8500 3050 2    60   ~ 0
A_GPIO0
Text Label 8900 3050 0    60   ~ 0
B_GPIO0
Text Label 8900 3150 0    60   ~ 0
B_GPIO12
Text Label 8900 3250 0    60   ~ 0
B_GPIO14
Text Label 8900 3350 0    60   ~ 0
B_GPIO16
$Comp
L R_PACK4 R?
U 1 1 5631B2B3
P 8700 4000
F 0 "R?" H 8700 4450 40  0000 C CNN
F 1 "220R" H 8700 3950 40  0000 C CNN
F 2 "FT:RES_CAY16" H 8700 3900 39  0001 C CNN
F 3 "" H 8700 4000 60  0000 C CNN
	1    8700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3650 8250 3650
Wire Wire Line
	8500 3750 8250 3750
Wire Wire Line
	8500 3850 8250 3850
Wire Wire Line
	8500 3950 8250 3950
Wire Wire Line
	8900 3650 9150 3650
Wire Wire Line
	8900 3750 9150 3750
Wire Wire Line
	8900 3850 9150 3850
Wire Wire Line
	8900 3950 9150 3950
Text Label 8900 3650 0    60   ~ 0
B_UART_TX
Text Label 8500 3650 2    60   ~ 0
A_UART_RX
Text Label 8500 3750 2    60   ~ 0
A_UART_TX
Text Label 8900 3750 0    60   ~ 0
B_UART_RX
Text Label 8900 3850 0    60   ~ 0
B_GPIO4
Text Label 8900 3950 0    60   ~ 0
B_GPIO5
Text Label 8500 3950 2    60   ~ 0
A_GPIO4_SCL
Text Label 8500 3850 2    60   ~ 0
A_GPIO5_SDA
Text Label 4850 5950 0    60   ~ 0
A_GPIO5_SDA
Text Label 4850 6050 0    60   ~ 0
A_GPIO4_SCL
Wire Wire Line
	4800 4600 5250 4600
Wire Wire Line
	4800 4700 5250 4700
Wire Wire Line
	4800 5050 5250 5050
Wire Wire Line
	4800 5150 5250 5150
Wire Wire Line
	4800 5250 5250 5250
Wire Wire Line
	4800 5350 5250 5350
Wire Wire Line
	4800 5450 5250 5450
Wire Wire Line
	4800 5550 5250 5550
Wire Wire Line
	4800 5950 5250 5950
Wire Wire Line
	4800 6050 5250 6050
Text Label 4100 3550 0    60   ~ 0
A_~RST
$Comp
L CONN_01X03 P?
U 1 1 5631BE89
P 3500 3000
F 0 "P?" H 3500 3200 50  0000 C CNN
F 1 "CONN_01X03" V 3600 3000 50  0000 C CNN
F 2 "" H 3500 3000 60  0000 C CNN
F 3 "" H 3500 3000 60  0000 C CNN
	1    3500 3000
	1    0    0    -1  
$EndComp
Text Label 4850 5550 0    60   ~ 0
BOOT_PB0
Wire Wire Line
	2650 3000 3300 3000
Wire Wire Line
	3300 2900 2850 2900
Wire Wire Line
	3300 3100 2850 3100
$Comp
L R R?
U 1 1 5631C18B
P 2650 3250
F 0 "R?" V 2730 3250 50  0000 C CNN
F 1 "10K" V 2650 3250 50  0000 C CNN
F 2 "" H 2650 3250 60  0000 C CNN
F 3 "" H 2650 3250 60  0000 C CNN
	1    2650 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 3500 2650 3500
Text Label 2850 3000 0    60   ~ 0
BOOT_PULL
Wire Wire Line
	2850 2900 2850 2700
$Comp
L +3.3V #PWR?
U 1 1 5631C4F8
P 2850 2700
F 0 "#PWR?" H 2850 2550 50  0001 C CNN
F 1 "+3.3V" H 2850 2840 50  0000 C CNN
F 2 "" H 2850 2700 60  0000 C CNN
F 3 "" H 2850 2700 60  0000 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3100 2850 3200
$Comp
L GND #PWR?
U 1 1 5631C5E6
P 2850 3200
F 0 "#PWR?" H 2850 2950 50  0001 C CNN
F 1 "GND" H 2850 3050 50  0000 C CNN
F 2 "" H 2850 3200 60  0000 C CNN
F 3 "" H 2850 3200 60  0000 C CNN
	1    2850 3200
	1    0    0    -1  
$EndComp
Text Notes 2650 2450 0    60   ~ 0
STM Boot Mode Select
$Comp
L R R?
U 1 1 5631CB53
P 5000 900
F 0 "R?" V 5080 900 50  0000 C CNN
F 1 "100K" V 5000 900 50  0000 C CNN
F 2 "FT:0603" V 5150 900 39  0000 C CNN
F 3 "" H 5000 900 60  0000 C CNN
	1    5000 900 
	0    1    1    0   
$EndComp
$Comp
L CAP C?
U 1 1 5631CC77
P 5350 1200
F 0 "C?" H 5400 1300 50  0000 L CNN
F 1 "1uF 6.3V" H 5400 1100 50  0000 L CNN
F 2 "FT:0603_CAP" H 5550 1000 39  0000 C CNN
F 3 "" H 5350 1200 60  0000 C CNN
	1    5350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 900  6100 900 
Wire Wire Line
	5350 900  5350 1000
Connection ~ 5350 900 
Text Label 2850 3500 0    60   ~ 0
BOOT_PB0
Text Notes 4750 700  0    59   ~ 0
PWM to RC ADC test circuit
Wire Wire Line
	4750 900  4350 900 
Text Label 4350 900  0    60   ~ 0
BOOT_PB0
Wire Wire Line
	5350 1400 5350 1650
$Comp
L GND #PWR?
U 1 1 5631DA5C
P 5350 1650
F 0 "#PWR?" H 5350 1400 50  0001 C CNN
F 1 "GND" H 5350 1500 50  0000 C CNN
F 2 "" H 5350 1650 60  0000 C CNN
F 3 "" H 5350 1650 60  0000 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
Text Notes 4350 1500 0    39   ~ 0
Values approximate,\nADC impedance approx\n1M, PWM frequency\napprox 1MHz. Exact values TBD\n(voltage divider must ensure\nDC with 3.3V out doesn't\nexceed 1.1V at AIN pin)
$Comp
L R R?
U 1 1 5631E0A5
P 6100 1300
F 0 "R?" V 6180 1300 50  0000 C CNN
F 1 "47K" V 6100 1300 50  0000 C CNN
F 2 "FT:0603" V 6250 1300 39  0000 C CNN
F 3 "" H 6100 1300 60  0000 C CNN
	1    6100 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 900  6100 1050
Wire Wire Line
	6100 1550 6100 1600
Wire Wire Line
	6100 1600 5350 1600
Connection ~ 5350 1600
$EndSCHEMATC