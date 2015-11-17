EESchema Schematic File Version 2
LIBS:freetronics_schematic
LIBS:ESP8266
LIBS:eyore-test
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
LIBS:eyore-test-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Eyore-Test"
Date ""
Rev "0.1"
Comp ""
Comment1 "TAPR Open Hardware License"
Comment2 "Copyright (C) 2015 Angus Gratton"
Comment3 "Test harness hardware for esp-open-rtos"
Comment4 ""
$EndDescr
$Comp
L USB_5PIN_SHELL P1
U 1 1 56305F6A
P 1450 1450
F 0 "P1" H 1375 1700 60  0000 C CNN
F 1 "USB_5PIN_SHELL" H 1300 1100 60  0001 L CNN
F 2 "FT:USB-MICRO-5pin_PTHMOUNT" H 1200 1100 31  0000 L CNN
F 3 "" H 1450 1450 60  0000 C CNN
	1    1450 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 56305FEF
P 1950 950
F 0 "#PWR01" H 1950 800 50  0001 C CNN
F 1 "+5V" H 1950 1090 50  0000 C CNN
F 2 "" H 1950 950 60  0000 C CNN
F 3 "" H 1950 950 60  0000 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33CTR U1
U 1 1 56306091
P 3300 1350
F 0 "U1" H 3300 1600 40  0000 C CNN
F 1 "LD1117S33CTR" H 3300 1550 40  0000 C CNN
F 2 "SOT-223" H 3300 1450 40  0000 C CNN
F 3 "" H 3300 1350 60  0000 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5630644C
P 3950 900
F 0 "#PWR02" H 3950 750 50  0001 C CNN
F 1 "+3.3V" H 3950 1040 50  0000 C CNN
F 2 "" H 3950 900 60  0000 C CNN
F 3 "" H 3950 900 60  0000 C CNN
	1    3950 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56306479
P 1950 2000
F 0 "#PWR03" H 1950 1750 50  0001 C CNN
F 1 "GND" H 1950 1850 50  0000 C CNN
F 2 "" H 1950 2000 60  0000 C CNN
F 3 "" H 1950 2000 60  0000 C CNN
	1    1950 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56306497
P 1150 2050
F 0 "#PWR04" H 1150 1800 50  0001 C CNN
F 1 "GND" H 1150 1900 50  0000 C CNN
F 2 "" H 1150 2050 60  0000 C CNN
F 3 "" H 1150 2050 60  0000 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
Text Label 1700 1400 0    60   ~ 0
USB_D-
Text Label 1700 1500 0    60   ~ 0
USB_D+
Text Label 1600 5600 2    60   ~ 0
USB_D-
Text Label 1600 5700 2    60   ~ 0
USB_D+
Text Label 1300 6200 0    60   ~ 0
STM_~RST
Text Label 1250 5800 0    60   ~ 0
SWDIO
Text Label 1250 5900 0    60   ~ 0
SWCLK
NoConn ~ 1650 1600
$Comp
L CONN_01X04 P2
U 1 1 56306A52
P 1600 3000
F 0 "P2" H 1600 3250 50  0000 C CNN
F 1 "CONN_01X04" V 1700 3000 50  0000 C CNN
F 2 "FT:1X04" H 1650 2700 39  0000 C CNN
F 3 "" H 1600 3000 60  0000 C CNN
	1    1600 3000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 56306B97
P 1100 2700
F 0 "#PWR05" H 1100 2550 50  0001 C CNN
F 1 "+3.3V" H 1100 2840 50  0000 C CNN
F 2 "" H 1100 2700 60  0000 C CNN
F 3 "" H 1100 2700 60  0000 C CNN
	1    1100 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56306BF9
P 1100 3350
F 0 "#PWR06" H 1100 3100 50  0001 C CNN
F 1 "GND" H 1100 3200 50  0000 C CNN
F 2 "" H 1100 3350 60  0000 C CNN
F 3 "" H 1100 3350 60  0000 C CNN
	1    1100 3350
	1    0    0    -1  
$EndComp
Text Label 1100 2950 0    60   ~ 0
SWCLK
Text Label 1100 3050 0    60   ~ 0
SWDIO
Text Notes 800  2450 0    60   ~ 0
SWD Interface (STLink pinout)
Text Notes 1100 700  0    60   ~ 0
USB Interface (serial, power)\n
Text Notes 8050 750  0    177  ~ 0
ESP8266 A
Text Notes 8100 4500 0    177  ~ 0
ESP8266 B
$Comp
L CAP C1
U 1 1 563169F8
P 2800 1550
F 0 "C1" H 2850 1650 50  0000 L CNN
F 1 "22uF X5R 16V" H 2850 1450 50  0000 L CNN
F 2 "FT:1210_CAP" H 3000 1350 39  0000 C CNN
F 3 "" H 2800 1550 60  0000 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56316BE1
P 3300 2000
F 0 "#PWR07" H 3300 1750 50  0001 C CNN
F 1 "GND" H 3300 1850 50  0000 C CNN
F 2 "" H 3300 2000 60  0000 C CNN
F 3 "" H 3300 2000 60  0000 C CNN
	1    3300 2000
	1    0    0    -1  
$EndComp
$Comp
L CAP C2
U 1 1 563168AB
P 3750 1550
F 0 "C2" H 3800 1650 50  0000 L CNN
F 1 "22uF X5R 16V" H 3800 1450 50  0000 L CNN
F 2 "FT:1210_CAP" H 3950 1350 39  0000 C CNN
F 3 "" H 3750 1550 60  0000 C CNN
	1    3750 1550
	1    0    0    -1  
$EndComp
$Comp
L ESP-12E U3
U 1 1 5631671A
P 8750 1650
F 0 "U3" H 8750 1550 50  0000 C CNN
F 1 "ESP-12E" H 8750 1750 50  0000 C CNN
F 2 "ESP:ESP-12E" H 8750 1650 39  0000 C CNN
F 3 "" H 8750 1650 50  0001 C CNN
	1    8750 1650
	1    0    0    -1  
$EndComp
Text Label 9650 1350 0    60   ~ 0
A_UART_TX
Text Label 7850 1950 2    60   ~ 0
A_GPIO13
Text Label 9650 1950 0    60   ~ 0
A_GPIO15
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
$Comp
L GND #PWR08
U 1 1 5631751A
P 10150 2650
F 0 "#PWR08" H 10150 2400 50  0001 C CNN
F 1 "GND" H 10150 2500 50  0000 C CNN
F 2 "" H 10150 2650 60  0000 C CNN
F 3 "" H 10150 2650 60  0000 C CNN
	1    10150 2650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5631769D
P 6350 1850
F 0 "#PWR09" H 6350 1700 50  0001 C CNN
F 1 "+3.3V" H 6350 1990 50  0000 C CNN
F 2 "" H 6350 1850 60  0000 C CNN
F 3 "" H 6350 1850 60  0000 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L CAP C10
U 1 1 56317877
P 7700 2300
F 0 "C10" H 7750 2400 50  0000 L CNN
F 1 "100nF 6.3V" H 7750 2200 50  0000 L CNN
F 2 "FT:0603_CAP" H 7900 2100 39  0000 C CNN
F 3 "" H 7700 2300 60  0000 C CNN
	1    7700 2300
	1    0    0    -1  
$EndComp
Text Label 7450 1650 0    60   ~ 0
A_GPIO16
Text Label 7850 1750 2    60   ~ 0
A_GPIO14
Text Label 7850 1850 2    60   ~ 0
A_GPIO12
$Comp
L GND #PWR010
U 1 1 56317DB5
P 7700 2650
F 0 "#PWR010" H 7700 2400 50  0001 C CNN
F 1 "GND" H 7700 2500 50  0000 C CNN
F 2 "" H 7700 2650 60  0000 C CNN
F 3 "" H 7700 2650 60  0000 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L CAP C8
U 1 1 56317F18
P 7250 2300
F 0 "C8" H 7300 2400 50  0000 L CNN
F 1 "22uF X5R 16V" H 6850 2200 50  0000 L CNN
F 2 "FT:1210_CAP" H 7450 2100 39  0000 C CNN
F 3 "" H 7250 2300 60  0000 C CNN
	1    7250 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56318159
P 7250 2650
F 0 "#PWR011" H 7250 2400 50  0001 C CNN
F 1 "GND" H 7250 2500 50  0000 C CNN
F 2 "" H 7250 2650 60  0000 C CNN
F 3 "" H 7250 2650 60  0000 C CNN
	1    7250 2650
	1    0    0    -1  
$EndComp
Text Notes 6450 2350 0    39   ~ 0
Note: Possible 1 cap\ncan be eliminated
$Comp
L ESP-12E U4
U 1 1 56319075
P 8900 5300
F 0 "U4" H 8900 5200 50  0000 C CNN
F 1 "ESP-12E" H 8900 5400 50  0000 C CNN
F 2 "ESP:ESP-12E" H 8900 5300 39  0000 C CNN
F 3 "" H 8900 5300 50  0001 C CNN
	1    8900 5300
	1    0    0    -1  
$EndComp
Text Label 9800 5500 0    60   ~ 0
B_GPIO2
Text Label 9800 5100 0    60   ~ 0
B_UART_RX
Text Label 7600 5600 0    60   ~ 0
B_GPIO13
Text Label 9800 5600 0    60   ~ 0
B_GPIO15
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
$Comp
L GND #PWR012
U 1 1 56319095
P 10300 6300
F 0 "#PWR012" H 10300 6050 50  0001 C CNN
F 1 "GND" H 10300 6150 50  0000 C CNN
F 2 "" H 10300 6300 60  0000 C CNN
F 3 "" H 10300 6300 60  0000 C CNN
	1    10300 6300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 5631909C
P 6500 5500
F 0 "#PWR013" H 6500 5350 50  0001 C CNN
F 1 "+3.3V" H 6500 5640 50  0000 C CNN
F 2 "" H 6500 5500 60  0000 C CNN
F 3 "" H 6500 5500 60  0000 C CNN
	1    6500 5500
	1    0    0    -1  
$EndComp
$Comp
L CAP C11
U 1 1 563190A8
P 7850 5950
F 0 "C11" H 7900 6050 50  0000 L CNN
F 1 "100nF 6.3V" H 7900 5850 50  0000 L CNN
F 2 "FT:0603_CAP" H 8050 5750 39  0000 C CNN
F 3 "" H 7850 5950 60  0000 C CNN
	1    7850 5950
	1    0    0    -1  
$EndComp
Text Label 7600 5300 0    60   ~ 0
B_GPIO16
Text Label 7600 5400 0    60   ~ 0
B_GPIO14
Text Label 7600 5500 0    60   ~ 0
B_GPIO12
$Comp
L GND #PWR014
U 1 1 563190B5
P 7850 6300
F 0 "#PWR014" H 7850 6050 50  0001 C CNN
F 1 "GND" H 7850 6150 50  0000 C CNN
F 2 "" H 7850 6300 60  0000 C CNN
F 3 "" H 7850 6300 60  0000 C CNN
	1    7850 6300
	1    0    0    -1  
$EndComp
$Comp
L CAP C9
U 1 1 563190BB
P 7400 5950
F 0 "C9" H 7450 6050 50  0000 L CNN
F 1 "22uF X5R 16V" H 7000 5850 50  0000 L CNN
F 2 "FT:1210_CAP" H 7600 5750 39  0000 C CNN
F 3 "" H 7400 5950 60  0000 C CNN
	1    7400 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 563190C4
P 7400 6300
F 0 "#PWR015" H 7400 6050 50  0001 C CNN
F 1 "GND" H 7400 6150 50  0000 C CNN
F 2 "" H 7400 6300 60  0000 C CNN
F 3 "" H 7400 6300 60  0000 C CNN
	1    7400 6300
	1    0    0    -1  
$EndComp
Text Notes 6650 6200 0    39   ~ 0
Note: Possible 1 cap\ncan be eliminated
Text Label 9800 5000 0    60   ~ 0
B_UART_TX
NoConn ~ 8650 6200
NoConn ~ 8750 6200
NoConn ~ 8850 6200
NoConn ~ 8950 6200
NoConn ~ 9050 6200
NoConn ~ 9150 6200
$Comp
L R_PACK4 R3
U 1 1 56319BA9
P 6600 3650
F 0 "R3" H 6600 4100 40  0000 C CNN
F 1 "220R" H 6600 3600 40  0000 C CNN
F 2 "FT:RES_CAY16" H 6900 3600 39  0000 C CNN
F 3 "" H 6600 3650 60  0000 C CNN
	1    6600 3650
	1    0    0    -1  
$EndComp
Text Label 1550 4600 2    60   ~ 0
A_~RST
Text Label 5250 4500 0    60   ~ 0
B_~RST
Text Label 5250 4700 0    60   ~ 0
A_~FLASH
Text Label 1550 5500 2    60   ~ 0
A_UART_TX
Text Label 1550 4700 2    60   ~ 0
B_UART_RX
Text Label 1550 4800 2    60   ~ 0
B_UART_TX
Text Label 6050 900  0    60   ~ 0
A_AIN
NoConn ~ 7600 5100
Text Label 6400 3600 2    60   ~ 0
A_GPIO16
Text Label 6400 3500 2    60   ~ 0
A_GPIO14
Text Label 10000 3600 2    60   ~ 0
A_GPIO0
Text Label 6800 3400 0    60   ~ 0
B_GPIO12
Text Label 6800 3500 0    60   ~ 0
B_GPIO14
Text Label 6800 3600 0    60   ~ 0
B_GPIO16
Text Label 8600 3300 0    60   ~ 0
B_GPIO13
Text Label 8600 3400 0    60   ~ 0
B_GPIO15
Text Label 8600 3600 0    60   ~ 0
B_GPIO4
Text Label 8600 3500 0    60   ~ 0
B_GPIO5
Text Label 8200 3600 2    60   ~ 0
A_GPIO4_SCL
Text Label 8200 3500 2    60   ~ 0
A_GPIO5_SDA
Text Label 5250 5200 0    60   ~ 0
A_GPIO5_SDA
Text Label 5250 5100 0    60   ~ 0
A_GPIO4_SCL
Text Label 1650 6400 2    60   ~ 0
STM_BOOT
$Comp
L +3.3V #PWR016
U 1 1 5631C4F8
P 2650 2700
F 0 "#PWR016" H 2650 2550 50  0001 C CNN
F 1 "+3.3V" H 2650 2840 50  0000 C CNN
F 2 "" H 2650 2700 60  0000 C CNN
F 3 "" H 2650 2700 60  0000 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
Text Notes 2450 2450 0    60   ~ 0
STM Bootloader Jumper\n
$Comp
L R R1
U 1 1 5631CB53
P 5000 900
F 0 "R1" V 5080 900 50  0000 C CNN
F 1 "100K" V 5000 900 50  0000 C CNN
F 2 "FT:0603" V 5150 900 39  0000 C CNN
F 3 "" H 5000 900 60  0000 C CNN
	1    5000 900 
	0    1    1    0   
$EndComp
$Comp
L CAP C4
U 1 1 5631CC77
P 5350 1200
F 0 "C4" H 5400 1300 50  0000 L CNN
F 1 "1uF 6.3V" H 5400 1100 50  0000 L CNN
F 2 "FT:0603_CAP" H 5550 1000 39  0000 C CNN
F 3 "" H 5350 1200 60  0000 C CNN
	1    5350 1200
	1    0    0    -1  
$EndComp
Text Notes 4750 700  0    59   ~ 0
PWM to RC ADC test circuit
$Comp
L GND #PWR017
U 1 1 5631DA5C
P 5350 1650
F 0 "#PWR017" H 5350 1400 50  0001 C CNN
F 1 "GND" H 5350 1500 50  0000 C CNN
F 2 "" H 5350 1650 60  0000 C CNN
F 3 "" H 5350 1650 60  0000 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
Text Notes 4350 1500 0    39   ~ 0
Values approximate,\nADC impedance approx\n1M, PWM frequency\napprox 1MHz. Exact values TBD\n(voltage divider must ensure\nDC with 3.3V out doesn't\nexceed 1.1V at AIN pin)
$Comp
L R R2
U 1 1 5631E0A5
P 6100 1300
F 0 "R2" V 6180 1300 50  0000 C CNN
F 1 "47K" V 6100 1300 50  0000 C CNN
F 2 "FT:0603" V 6250 1300 39  0000 C CNN
F 3 "" H 6100 1300 60  0000 C CNN
	1    6100 1300
	-1   0    0    1   
$EndComp
Text Label 8200 3300 2    60   ~ 0
A_GPIO13
Text Label 6400 3400 2    60   ~ 0
A_GPIO12
Text Label 1550 5000 2    60   ~ 0
A_GPIO14
Text Notes 700  5000 0    39   ~ 0
HSPI CLK
Text Label 1550 5100 2    60   ~ 0
A_GPIO12
Text Notes 700  5100 0    39   ~ 0
HSPI MISO
Text Label 1550 5200 2    60   ~ 0
A_GPIO13
Text Notes 700  5200 0    39   ~ 0
HSPI MOSI\n
Text Label 1550 4900 2    60   ~ 0
A_GPIO15
Text Notes 800  4900 0    39   ~ 0
HSPI ~CS
Text Label 1550 5400 2    60   ~ 0
A_UART_RX
Text Label 9650 1450 0    60   ~ 0
A_UART_RX
Text Label 5250 5000 0    60   ~ 0
A_GPIO12
Text Notes 5850 5000 0    39   ~ 0
I2SI_DATA
Text Notes 700  5400 0    39   ~ 0
I2SO_DATA
Text Notes 5850 5150 0    39   ~ 0
ESP8266\nSoftware i2c
Text Label 1550 6000 2    60   ~ 0
A_GPIO14
Text Notes 750  6000 0    39   ~ 0
I2SI_WS
Text Label 1300 4500 0    60   ~ 0
A_AIN
$Comp
L +3.3V #PWR018
U 1 1 563276CF
P 2000 3850
F 0 "#PWR018" H 2000 3700 50  0001 C CNN
F 1 "+3.3V" H 2000 3990 50  0000 C CNN
F 2 "" H 2000 3850 60  0000 C CNN
F 3 "" H 2000 3850 60  0000 C CNN
	1    2000 3850
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 5632781C
P 2400 4000
F 0 "L1" H 2300 4100 40  0000 C CNN
F 1 "BLM18KG121TN1D" H 2400 3950 40  0000 C CNN
F 2 "FT:0603" H 2400 3850 39  0000 C CNN
F 3 "" H 2400 4000 60  0000 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
Text Label 7600 5700 0    60   ~ 0
B_VCC
Text Label 7600 2050 0    60   ~ 0
A_VCC
Text Label 2750 4000 0    60   ~ 0
STM_VCC
$Comp
L CAP C6
U 1 1 5632809E
P 5700 7200
F 0 "C6" H 5750 7300 50  0000 L CNN
F 1 "100nF 6.3V" H 5750 7100 50  0000 L CNN
F 2 "FT:0603_CAP" H 5900 7000 39  0000 C CNN
F 3 "" H 5700 7200 60  0000 C CNN
	1    5700 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 563280A5
P 5700 7550
F 0 "#PWR019" H 5700 7300 50  0001 C CNN
F 1 "GND" H 5700 7400 50  0000 C CNN
F 2 "" H 5700 7550 60  0000 C CNN
F 3 "" H 5700 7550 60  0000 C CNN
	1    5700 7550
	1    0    0    -1  
$EndComp
$Comp
L CAP C5
U 1 1 563280AB
P 5350 7200
F 0 "C5" H 5400 7300 50  0000 L CNN
F 1 "22uF X5R 16V" H 4950 7100 50  0000 L CNN
F 2 "FT:1210_CAP" H 5550 7000 39  0000 C CNN
F 3 "" H 5350 7200 60  0000 C CNN
	1    5350 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 563280B2
P 5350 7550
F 0 "#PWR020" H 5350 7300 50  0001 C CNN
F 1 "GND" H 5350 7400 50  0000 C CNN
F 2 "" H 5350 7550 60  0000 C CNN
F 3 "" H 5350 7550 60  0000 C CNN
	1    5350 7550
	1    0    0    -1  
$EndComp
Text Label 5200 6950 2    60   ~ 0
STM_VCC
$Comp
L GND #PWR021
U 1 1 563282F2
P 3000 7300
F 0 "#PWR021" H 3000 7050 50  0001 C CNN
F 1 "GND" H 3000 7150 50  0000 C CNN
F 2 "" H 3000 7300 60  0000 C CNN
F 3 "" H 3000 7300 60  0000 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
NoConn ~ 5650 6600
$Comp
L CONN_01X02 P3
U 1 1 56329079
P 3300 2950
F 0 "P3" H 3300 3100 50  0000 C CNN
F 1 "CONN_01X02" V 3400 2950 50  0000 C CNN
F 2 "FT:1X02" H 3300 2650 39  0000 C CNN
F 3 "" H 3300 2950 60  0000 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSHBUTTON SW1
U 1 1 5632913A
P 4300 3100
F 0 "SW1" H 4150 3210 50  0000 C CNN
F 1 "SW_PUSHBUTTON" H 4300 3020 50  0000 C CNN
F 2 "FT:SW_PUSHBUTTON_SMD" H 4550 3300 39  0000 C CNN
F 3 "" H 4300 3100 60  0000 C CNN
	1    4300 3100
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR022
U 1 1 563293FD
P 4300 2700
F 0 "#PWR022" H 4300 2550 50  0001 C CNN
F 1 "+3.3V" H 4300 2840 50  0000 C CNN
F 2 "" H 4300 2700 60  0000 C CNN
F 3 "" H 4300 2700 60  0000 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
Text Label 5350 2750 0    60   ~ 0
STM_~RST
$Comp
L GND #PWR023
U 1 1 56329666
P 5300 3650
F 0 "#PWR023" H 5300 3400 50  0001 C CNN
F 1 "GND" H 5300 3500 50  0000 C CNN
F 2 "" H 5300 3650 60  0000 C CNN
F 3 "" H 5300 3650 60  0000 C CNN
	1    5300 3650
	1    0    0    -1  
$EndComp
Text Notes 3900 2450 0    60   ~ 0
STM Bootloader Button
Text Notes 5100 2450 0    60   ~ 0
STM Reset Button
Text Label 8200 3400 2    60   ~ 0
A_GPIO15
$Comp
L +3.3V #PWR024
U 1 1 5632C27E
P 10950 3150
F 0 "#PWR024" H 10950 3000 50  0001 C CNN
F 1 "+3.3V" H 10950 3290 50  0000 C CNN
F 2 "" H 10950 3150 60  0000 C CNN
F 3 "" H 10950 3150 60  0000 C CNN
	1    10950 3150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG025
U 1 1 5632C368
P 6650 800
F 0 "#FLG025" H 6650 895 50  0001 C CNN
F 1 "PWR_FLAG" H 6650 980 50  0000 C CNN
F 2 "" H 6650 800 60  0000 C CNN
F 3 "" H 6650 800 60  0000 C CNN
	1    6650 800 
	1    0    0    -1  
$EndComp
Text Label 6750 900  0    60   ~ 0
A_VCC
$Comp
L PWR_FLAG #FLG026
U 1 1 5632C4E6
P 6650 1200
F 0 "#FLG026" H 6650 1295 50  0001 C CNN
F 1 "PWR_FLAG" H 6650 1380 50  0000 C CNN
F 2 "" H 6650 1200 60  0000 C CNN
F 3 "" H 6650 1200 60  0000 C CNN
	1    6650 1200
	1    0    0    -1  
$EndComp
Text Label 6750 1300 0    60   ~ 0
B_VCC
$Comp
L PWR_FLAG #FLG027
U 1 1 5632C7E0
P 2700 4000
F 0 "#FLG027" H 2700 4095 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 4180 50  0000 C CNN
F 2 "" H 2700 4000 60  0000 C CNN
F 3 "" H 2700 4000 60  0000 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG028
U 1 1 5632CBA7
P 2400 1700
F 0 "#FLG028" H 2400 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1880 50  0000 C CNN
F 2 "" H 2400 1700 60  0000 C CNN
F 3 "" H 2400 1700 60  0000 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
Text Label 6800 3300 0    60   ~ 0
B_GPIO2
Text Label 6400 3300 2    60   ~ 0
A_GPIO2
$Comp
L PWR_FLAG #FLG029
U 1 1 5632D5E0
P 2400 1300
F 0 "#FLG029" H 2400 1395 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1480 50  0000 C CNN
F 2 "" H 2400 1300 60  0000 C CNN
F 3 "" H 2400 1300 60  0000 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
Text Label 2600 3000 0    60   ~ 0
STM_BOOT
Text Label 3750 3650 0    60   ~ 0
STM_BOOT
Text Label 5250 4900 0    59   ~ 0
PWM_OUT
Text Label 4350 900  0    59   ~ 0
PWM_OUT
$Comp
L SW_PUSHBUTTON SW2
U 1 1 5633117C
P 5300 3100
F 0 "SW2" H 5150 3210 50  0000 C CNN
F 1 "SW_PUSHBUTTON" H 5300 3020 50  0000 C CNN
F 2 "FT:SW_PUSHBUTTON_SMD" H 5550 3300 39  0000 C CNN
F 3 "" H 5300 3100 60  0000 C CNN
	1    5300 3100
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 56331B2E
P 6850 2050
F 0 "L2" H 6650 1950 40  0000 C CNN
F 1 "BLM18KG121TN1D" H 6850 2000 40  0000 C CNN
F 2 "FT:0603" H 6850 1900 39  0000 C CNN
F 3 "" H 6850 2050 60  0000 C CNN
	1    6850 2050
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L3
U 1 1 56331D88
P 7000 5700
F 0 "L3" H 6900 5800 40  0000 C CNN
F 1 "BLM18KG121TN1D" H 7000 5650 40  0000 C CNN
F 2 "FT:0603" H 7000 5550 39  0000 C CNN
F 3 "" H 7000 5700 60  0000 C CNN
	1    7000 5700
	1    0    0    -1  
$EndComp
$Comp
L R_PACK4 R5
U 1 1 563332AA
P 8400 3650
F 0 "R5" H 8400 4100 40  0000 C CNN
F 1 "220R" H 8400 3600 40  0000 C CNN
F 2 "FT:RES_CAY16" H 8700 3600 39  0000 C CNN
F 3 "" H 8400 3650 60  0000 C CNN
	1    8400 3650
	1    0    0    -1  
$EndComp
$Comp
L R_PACK4 R6
U 1 1 5633332C
P 10200 3650
F 0 "R6" H 10200 4100 40  0000 C CNN
F 1 "220R" H 10200 3600 40  0000 C CNN
F 2 "FT:RES_CAY16" H 10500 3600 39  0000 C CNN
F 3 "" H 10200 3650 60  0000 C CNN
	1    10200 3650
	1    0    0    -1  
$EndComp
Text Label 10000 3300 2    60   ~ 0
B_ENABLE
Text Label 10000 3500 2    60   ~ 0
A_ENABLE
Text Label 1550 5300 2    60   ~ 0
B_GPIO15
NoConn ~ 5650 6500
Wire Wire Line
	7850 1550 7450 1550
Wire Wire Line
	7600 5200 8000 5200
Wire Wire Line
	10000 3500 9750 3500
Wire Wire Line
	9750 3400 10000 3400
Connection ~ 2400 1700
Connection ~ 1950 1700
Connection ~ 2400 1300
Wire Wire Line
	10000 3300 9750 3300
Connection ~ 3250 4000
Wire Wire Line
	6650 1300 7050 1300
Wire Wire Line
	6650 1200 6650 1300
Wire Wire Line
	6650 900  7050 900 
Wire Wire Line
	6650 800  6650 900 
Wire Wire Line
	5300 3400 5300 3650
Wire Wire Line
	4900 2750 5700 2750
Wire Wire Line
	5300 2800 5300 2750
Wire Wire Line
	4300 2800 4300 2700
Wire Wire Line
	4300 3650 4300 3400
Wire Wire Line
	3550 3650 4300 3650
Connection ~ 3000 7150
Wire Wire Line
	3000 7150 3550 7150
Wire Wire Line
	3100 7000 3100 7150
Wire Wire Line
	3000 7000 3000 7300
Connection ~ 5350 6950
Wire Wire Line
	5350 7000 5350 6950
Wire Wire Line
	5700 6950 5700 7000
Wire Wire Line
	5350 7400 5350 7550
Wire Wire Line
	5700 7400 5700 7550
Wire Wire Line
	2000 4000 2000 3850
Wire Wire Line
	2100 4000 2000 4000
Connection ~ 2850 4000
Wire Wire Line
	2850 4200 2850 4000
Connection ~ 3150 4000
Wire Wire Line
	3150 4200 3150 4000
Wire Wire Line
	3250 4000 3250 4200
Wire Wire Line
	2700 4000 3850 4000
Connection ~ 5350 1600
Wire Wire Line
	6100 1600 5350 1600
Wire Wire Line
	6100 1550 6100 1600
Wire Wire Line
	6100 900  6100 1050
Wire Wire Line
	5350 1400 5350 1650
Wire Wire Line
	4750 900  4350 900 
Connection ~ 5350 900 
Wire Wire Line
	5350 900  5350 1000
Wire Wire Line
	5250 900  6100 900 
Wire Wire Line
	2650 2900 2650 2700
Wire Wire Line
	3100 3000 2400 3000
Wire Wire Line
	3100 2900 2650 2900
Wire Wire Line
	5200 6600 5650 6600
Wire Wire Line
	5200 6500 5650 6500
Wire Wire Line
	5200 5200 5650 5200
Wire Wire Line
	5200 5100 5650 5100
Wire Wire Line
	5200 5000 5650 5000
Wire Wire Line
	5200 4900 5650 4900
Wire Wire Line
	5200 4800 5650 4800
Wire Wire Line
	5200 4600 5650 4600
Wire Wire Line
	5200 4500 5650 4500
Wire Wire Line
	8600 3600 8850 3600
Wire Wire Line
	8600 3500 8850 3500
Wire Wire Line
	8600 3400 8850 3400
Wire Wire Line
	8600 3300 8850 3300
Wire Wire Line
	8200 3600 7950 3600
Wire Wire Line
	8200 3500 7950 3500
Wire Wire Line
	8200 3400 7950 3400
Wire Wire Line
	8200 3300 7950 3300
Wire Wire Line
	6800 3600 7050 3600
Wire Wire Line
	6800 3500 7050 3500
Wire Wire Line
	6800 3400 7050 3400
Wire Wire Line
	6800 3300 7050 3300
Wire Wire Line
	6400 3600 6150 3600
Wire Wire Line
	6400 3500 6150 3500
Wire Wire Line
	6400 3400 6150 3400
Wire Wire Line
	6400 3300 6150 3300
Wire Wire Line
	7850 5750 7850 5700
Wire Wire Line
	7400 6150 7400 6300
Connection ~ 7400 5700
Wire Wire Line
	7400 5700 7400 5750
Wire Wire Line
	7850 6150 7850 6300
Connection ~ 7850 5700
Wire Wire Line
	7300 5700 8000 5700
Wire Wire Line
	6500 5700 6700 5700
Wire Wire Line
	6500 5700 6500 5500
Wire Wire Line
	10300 5700 10300 6300
Wire Wire Line
	9800 5700 10300 5700
Wire Wire Line
	9800 5600 10300 5600
Wire Wire Line
	9800 5500 10300 5500
Wire Wire Line
	9800 5400 10300 5400
Wire Wire Line
	9800 5300 10300 5300
Wire Wire Line
	9800 5200 10300 5200
Wire Wire Line
	9800 5100 10300 5100
Wire Wire Line
	9800 5000 10300 5000
Wire Wire Line
	8000 5600 7600 5600
Wire Wire Line
	8000 5500 7600 5500
Wire Wire Line
	8000 5400 7600 5400
Wire Wire Line
	8000 5300 7600 5300
Wire Wire Line
	8000 5100 7600 5100
Wire Wire Line
	8000 5000 7600 5000
Wire Wire Line
	7700 2100 7700 2050
Wire Wire Line
	7250 2500 7250 2650
Connection ~ 7250 2050
Wire Wire Line
	7250 2050 7250 2100
Wire Wire Line
	7700 2500 7700 2650
Connection ~ 7700 2050
Wire Wire Line
	7150 2050 7850 2050
Wire Wire Line
	6350 2050 6550 2050
Wire Wire Line
	6350 2050 6350 1850
Wire Wire Line
	10150 2050 10150 2650
Wire Wire Line
	9650 2050 10150 2050
Wire Wire Line
	9650 1950 10150 1950
Wire Wire Line
	9650 1850 10150 1850
Wire Wire Line
	9650 1750 10150 1750
Wire Wire Line
	9650 1650 10150 1650
Wire Wire Line
	9650 1550 10150 1550
Wire Wire Line
	9650 1450 10150 1450
Wire Wire Line
	9650 1350 10150 1350
Wire Wire Line
	7850 1950 7450 1950
Wire Wire Line
	7850 1850 7450 1850
Wire Wire Line
	7850 1750 7450 1750
Wire Wire Line
	7850 1650 7450 1650
Wire Wire Line
	7850 1450 7450 1450
Wire Wire Line
	7850 1350 7450 1350
Connection ~ 3300 1850
Connection ~ 3300 1900
Wire Wire Line
	2800 1900 3300 1900
Wire Wire Line
	2800 1750 2800 1900
Wire Wire Line
	3300 1600 3300 2000
Wire Wire Line
	3750 1850 3300 1850
Wire Wire Line
	3750 1750 3750 1850
Connection ~ 3750 1300
Wire Wire Line
	3750 1350 3750 1300
Connection ~ 2800 1300
Wire Wire Line
	2800 1350 2800 1300
Wire Wire Line
	1100 3150 1100 3350
Wire Wire Line
	1400 3150 1100 3150
Wire Wire Line
	1400 3050 1100 3050
Wire Wire Line
	1400 2950 1100 2950
Wire Wire Line
	1100 2850 1100 2700
Wire Wire Line
	1400 2850 1100 2850
Wire Wire Line
	1650 6200 1250 6200
Wire Wire Line
	1650 6000 1250 6000
Wire Wire Line
	1650 5900 1250 5900
Wire Wire Line
	1650 5800 1250 5800
Wire Wire Line
	1650 5700 1250 5700
Wire Wire Line
	1650 5600 1250 5600
Wire Wire Line
	1650 5500 1250 5500
Wire Wire Line
	1650 5400 1250 5400
Wire Wire Line
	1650 5300 1250 5300
Wire Wire Line
	1650 5200 1250 5200
Wire Wire Line
	1650 5100 1250 5100
Wire Wire Line
	1650 5000 1250 5000
Wire Wire Line
	1650 4900 1250 4900
Wire Wire Line
	1650 4800 1250 4800
Wire Wire Line
	1650 4700 1250 4700
Wire Wire Line
	1650 4600 1250 4600
Wire Wire Line
	1650 4500 1250 4500
Wire Wire Line
	1150 2050 1150 1950
Wire Wire Line
	1950 1700 1950 2000
Wire Wire Line
	1650 1700 2400 1700
Wire Wire Line
	3950 1300 3950 900 
Wire Wire Line
	3700 1300 3950 1300
Wire Wire Line
	1650 1500 2150 1500
Wire Wire Line
	1650 1400 2150 1400
Connection ~ 1950 1300
Wire Wire Line
	1950 950  1950 1300
Wire Wire Line
	1650 1300 2900 1300
Wire Wire Line
	1650 6400 1200 6400
Wire Wire Line
	3200 7150 3200 7000
Connection ~ 3100 7150
Wire Wire Line
	3550 7150 3550 7000
Connection ~ 3200 7150
Connection ~ 2700 4000
Wire Wire Line
	3450 4000 3450 4200
Wire Wire Line
	3850 4000 3850 4200
Connection ~ 3450 4000
Wire Wire Line
	8500 2550 8500 2850
Wire Wire Line
	8600 2850 8600 2550
Wire Wire Line
	8900 2550 8900 2850
Wire Wire Line
	9000 2550 9000 2850
Text Label 8500 2550 3    60   ~ 0
A_SPI_~CS
Text Label 8600 2550 3    60   ~ 0
A_SPI_MISO
Text Label 8900 2550 3    60   ~ 0
A_SPI_MOSI
Text Label 9000 2550 3    60   ~ 0
A_SPI_SCK
Wire Wire Line
	8800 2550 8800 2850
Wire Wire Line
	8700 2850 8700 2550
Text Label 8700 2550 3    60   ~ 0
A_SPI_GPIO9
Text Label 8800 2550 3    60   ~ 0
A_SPI_GPIO10
Text Label 5250 5700 0    60   ~ 0
A_SPI_~CS
Wire Wire Line
	5200 5300 5650 5300
Wire Wire Line
	5200 5400 5650 5400
Wire Wire Line
	5200 5500 5650 5500
Wire Wire Line
	5200 5600 5650 5600
Wire Wire Line
	5200 5700 5650 5700
Wire Wire Line
	5200 5800 5650 5800
Wire Wire Line
	5200 5900 5650 5900
Wire Wire Line
	5200 6000 5650 6000
Wire Wire Line
	5200 6100 5650 6100
Wire Wire Line
	5200 6200 5650 6200
Wire Wire Line
	5200 6300 5650 6300
Text Label 5250 5900 0    60   ~ 0
A_SPI_MISO
Text Label 5250 5800 0    60   ~ 0
A_SPI_SCK
Text Label 5250 6000 0    60   ~ 0
A_SPI_MOSI
Text Label 5250 6100 0    60   ~ 0
A_SPI_GPIO9
Text Label 5250 6200 0    60   ~ 0
A_SPI_GPIO10
NoConn ~ 5650 5400
NoConn ~ 5650 5500
NoConn ~ 5650 6300
Wire Wire Line
	5200 4700 5650 4700
$Comp
L CAP C7
U 1 1 5642561E
P 6250 7200
F 0 "C7" H 6300 7300 50  0000 L CNN
F 1 "100nF 6.3V" H 6300 7100 50  0000 L CNN
F 2 "FT:0603_CAP" H 6450 7000 39  0000 C CNN
F 3 "" H 6250 7200 60  0000 C CNN
	1    6250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6950 6250 7000
Connection ~ 5700 6950
$Comp
L GND #PWR030
U 1 1 56425794
P 6250 7550
F 0 "#PWR030" H 6250 7300 50  0001 C CNN
F 1 "GND" H 6250 7400 50  0000 C CNN
F 2 "" H 6250 7550 60  0000 C CNN
F 3 "" H 6250 7550 60  0000 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7400 6250 7550
Text Label 9650 1850 0    60   ~ 0
A_GPIO2
Text Label 5250 5600 0    60   ~ 0
A_GPIO2
Text Notes 10250 1950 0    39   ~ 0
HSPI ~CS
Text Notes 7100 1750 0    39   ~ 0
HSPI CLK
Text Notes 7050 1850 0    39   ~ 0
HSPI MISO
Text Notes 7050 1950 0    39   ~ 0
HSPI MOSI\n
Text Notes 10600 1950 0    39   ~ 0
I2SO_BCK\n
Text Notes 6750 1850 0    39   ~ 0
I2SI_DATA
Text Notes 10300 1600 0    39   ~ 0
ESP8266\nSoftware i2c
Text Notes 6800 1750 0    39   ~ 0
I2SI_WS
$Comp
L STM32F072C8 U2
U 1 1 56430488
P 3300 5500
F 0 "U2" H 2400 4250 60  0000 C CNN
F 1 "STM32F072C8" H 2200 4350 60  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 2400 4450 31  0000 C CNN
F 3 "" H 2900 5900 60  0000 C CNN
	1    3300 5500
	1    0    0    -1  
$EndComp
Text Label 6150 3950 0    60   ~ 0
A_~RST
Text Label 6150 4050 0    60   ~ 0
B_~RST
$Comp
L R_PACK4 R4
U 1 1 564388E3
P 6600 4300
F 0 "R4" H 6600 4750 40  0000 C CNN
F 1 "10K" H 6600 4250 40  0000 C CNN
F 2 "FT:RES_CAY16" H 6900 4250 39  0000 C CNN
F 3 "" H 6600 4300 60  0000 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3950 6950 3950
Wire Wire Line
	6950 3950 6950 4500
$Comp
L GND #PWR031
U 1 1 56438AB2
P 6950 4500
F 0 "#PWR031" H 6950 4250 50  0001 C CNN
F 1 "GND" H 6950 4350 50  0000 C CNN
F 2 "" H 6950 4500 60  0000 C CNN
F 3 "" H 6950 4500 60  0000 C CNN
	1    6950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4050 6950 4050
Connection ~ 6950 4050
Wire Wire Line
	6800 4150 6950 4150
Connection ~ 6950 4150
Wire Wire Line
	6800 4250 6950 4250
Connection ~ 6950 4250
Wire Wire Line
	6400 3950 6150 3950
Wire Wire Line
	6150 4050 6400 4050
Wire Wire Line
	6150 4250 6400 4250
NoConn ~ 6150 4250
NoConn ~ 5650 5300
Wire Wire Line
	6150 4150 6400 4150
Text Label 6400 4150 2    60   ~ 0
STM_BOOT
Text Notes 6750 1950 0    39   ~ 0
I2SI_BCK
Text Label 5250 4800 0    60   ~ 0
A_GPIO13
Text Notes 5850 4800 0    39   ~ 0
I2SI_BCK\n
Text Notes 10300 1450 0    39   ~ 0
I2SO_DATA
Text Notes 10600 1850 0    39   ~ 0
I2SO_WS\n
Text Notes 5850 5600 0    39   ~ 0
I2SO_WS\n
Text Notes 500  4900 0    39   ~ 0
I2SO_BCK\n
Wire Wire Line
	5200 6950 6250 6950
$Comp
L C C3
U 1 1 56447F1C
P 4900 3100
F 0 "C3" H 4800 3200 50  0000 L CNN
F 1 "100nF" H 4650 3000 50  0000 L CNN
F 2 "FT:0603_CAP" H 4938 2950 30  0000 C CNN
F 3 "" H 4900 3100 60  0000 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2950 4900 2750
Connection ~ 5300 2750
Wire Wire Line
	5300 3500 4900 3500
Wire Wire Line
	4900 3500 4900 3250
Connection ~ 5300 3500
Text Label 5250 4600 0    60   ~ 0
B_~FLASH
Text Label 10400 3600 0    60   ~ 0
A_~FLASH
Wire Wire Line
	10950 3500 10950 3150
Connection ~ 10950 3300
Text Label 10400 3400 0    60   ~ 0
B_~FLASH
Wire Wire Line
	10000 3600 9750 3600
Wire Wire Line
	10400 3500 10950 3500
Text Label 10000 3400 2    60   ~ 0
B_GPIO0
Wire Wire Line
	10400 3600 10700 3600
Wire Wire Line
	10400 3300 10950 3300
Wire Wire Line
	10400 3400 10700 3400
$EndSCHEMATC
