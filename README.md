# Eyore-Test

A hardware design for running automated tests against the esp-open-rtos ESP8266-based software framework.

# Major Components

* 2x ESP-12E ESP8266 processor modules, to run tests on. Named A & B.
* 1x STM32F072C8 Cortex M0 microcontroller - acts as USB serial for programming & monitoring, also provides a "programmable peripheral" to test against.
* Host computer with esp-open-rtos source tree, including host test program (`test_runner.py`).

# Cost

Aim is for total BOM cost under $12US for small quantities, all inclusive.

# Functional Description

## Programming/Initialisation

STM32F072 acts as USB device (dual CDC ACM serial port). STM32 USART1 connects to ESP A's TX/RX pins, USART2 to ESP B TX/RX pins.

Other STM32 I/O pins are wired to drive RESET and GPIO0 on both ESP A & ESP B. This allows the STM32 to reset the ESPs & select either serial bootloading or normal operation.

The USB CDC interface provides a "NodeMCU-compatible" reset protocol that works with esptool.py - asserting DTR pulls down GPIO0, asserting RTS pulls down RESET, but asserting both DTR and RTS together does nothing.

## ESP A / ESP B Connections

These connections match the "dual" configuration mentioned in the esp-open-rtos test_setup docs. These allow the ESPs to interact with each other during tests.

This part of the test setup can be reproduced on a breadboard fairly easily.

ESP A & B have the following interconncted pins, all via 220 ohm resistors for short circuit protection:

ESP A | ESP B | Function
----- | ------  --------
2     | 2     |
4     | 4     |
5     | 5     |
12    | 12    |
13    | 15    | ESP UART RX/TX "swapped"
15    | 13    | ESP UART TX/RX "swapped"
14    | 14    |

Note that GPIOs on ESP A are also connected to the STM32.

## ESP A / STM32 Connections

To allow peripheral testing between ESP A and an independent microcontroller, some STM32 peripherals are connected to ESP A peripherals:

ESP A Interface | ESP GPIOs              | STM32 Interface | ESP Pins
--------------- | ---------------------- | ---------------- | ----------------
Software i2c    | 4, 5                   | I2C1             | PB6, PB7 [1]
HSPI            | 12-15                  | SPI1             | PA4-PA7
I2S Input       | 14(WS),13(BCK),12(DAT) | I2S1             | PA15, PB3, PB5
I2S Output      | 2(WS),3(DAT),14(CLK)   | N/A (bit-bang)   | PB11, PA9, PA4 [2]
SPI (flash intf)|                        | SPI2             | PB12..PB15 [3]
ADC (TOUT)      | TOUT                   | GPIO (bit-bang)  | PA0 & PB4 [4]

[1] I2C1 slave is the only STM32 interface enabled after reset, and is the protocol used for the ESP itself to configure the STM32 as a "programmable peripheral".

[2] ESP I2S output is not wired to a I2S peripheral on the STM32. However STM32 can bit-bang reading of the I2S output (at slow clock speeds).

[3] Not used due to hardware bug: On Rev 1.0 of eyore-test the SPI2 NSS pin (slave select) is wired to the CS line of the ESP module, which is the CS line for the ESP's SPI flash. The other SPI2 NSS pin is not connected in this revision.

[4] TOUT pin is connected directly to STM ADC pin PA0. TOUT is also connected to PB4 via an RC network, so PB4 can be used as a low-fi DAC, PWMing a voltage for the ADC to read.

## Programmable Peripheral Interface

As part of each test, ESP A can configure the STM32 peripherals via the I2C interface.

Actual I2C protocol/register details are TBD, likely to be incremental features.

# STM32 Firmware

STM32 has a USB DFU bootloader in ROM. "Flash" button and jumper are provided to access this bootloader on power-on. SWD port is also provided for external programming/debugging if necessary.

# Name

I've seen esp-open-rtos abbreviated to "e-o-r", and I tend to read that as "Eyore". :)
