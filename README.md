# Eyore-Test

A hardware design for running automated tests against the esp-open-rtos ESP8266-based software framework.

# Major Components

* 2x ESP-12E ESP8266 processor modules, to run tests on. Named A & B.
* 1x STM32F042 Cortex M0 microcontroller - acts as USB serial for programming & monitoring, also provides peripherals to test against.
* Host computer with esp-open-rtos source tree, including host test coordination program.

# Cost

Aim is for total BOM cost under $12US for small quantities, all inclusive.

# Functional Description

## Programming/Initialisation

STM32F042 acts as USB device (dual CDC ACM serial port). STM32 USART1 connects to ESP A, USART2 to ESP B.

Each ESP has its USB/serial UART connection made via pin GPIO2 (the duplicate UART0 TX pin) & pin GPIO3 (the default UART0 RX pin).

Other STM32 pins are also wired to drive RESET, GPIO0 & GPIO15 on both ESP A & ESP B. This allows the STM32 to reset the ESPs & select either serial bootloading or normal operation. The USB CDC interface allows the same "NodeMCU-compatible" reset protocol that works with esptool.py - asserting DTR pulls down GPIO0, asserting RTS pulls down RESET, but asserting both DTR and RTS together does nothing.

## Test Types

* Standalone tests use only ESP A. ESP B is held in reset.

* Joint tests involve interaction between ESP A and ESP B. The ESP test firmware "swaps" UART0 onto GPIO 13/15 once it starts running. These pins are interconnected between the two boards, to allow them to coordinate during joint tests.

During both kinds of test the firmware configures GPIO2 (connected to STM32 UART RX for USB serial) as UART1 TX. This allows test programs to use UART1 to report progress back to the host via USB serial.

## Basic Test Process

Setup:
* Host uses esptool.py to flash both ESP A & ESP B with an identical firmware image. The image contains multiple test cases compiled into one program.
* Host sends a command to ESP A which causes it to output a list of the names of compiled-in tests (and whether each test is standalone or joint).

Then, for each test:
* Host uses DTR to reset both ESP A & ESP B simultaneously (joint test), or resets ESP A while keeping ESP B in reset (standalone test).
* Host uses serial commands to configure ESPs with their roles (A or B), and name of the test to run.
* ESPs run individual test functions, report status to hosts via USB serial.
* Host concludes test (success, failure, timeout), resets ESPs again, then configures for next test.

## Inter-ESP Connections

As well as the "swapped" UART0 pins on GPIOs 13 & 15 for cross-ESP coordination, the GPIOs 0, 1, 4, 5, 12, 14 & 16 are interconnected between ESP A & B. All inter-ESP connections are via 220 ohm resistors to protect against damage from shorts.

## Standalone test functions

To allow more in-depth standalone testing using ESP A, some STM32 peripherals are connected to ESP A peripherals:

* ESP A GPIOs 4 & 5 are connected to STM32 I2C1 (pin PF0, PF1).
* ESP A HSPI interface (GPIOs 12-15) are connected to STM32 SPI1 (Port A).
* ESP A I2S input pins are connected to STM32 I2S1 (pin PA15, Port B).
* ESP A I2S output data pin is connected to STM32 PA9 (to potentially measure I2S output timings, etc.)
* ESP A analog input pin is connected to an RC low pass filter driven by PWM from STM32 PB4, creating a very low frequency DAC for testing the ESP ADC.
* ESP analog input pin is also wired back to STM32 AIN0 for comparison.

Out of the peripherals just mentioned, only the STRM I2C1 port is enabled by the STM32 firmware after reset (as an I2C slave). The idea is that the ESP can configure and interact with the STM32 peripherals via I2C reads and writes.

Actual firmware details are TBD (all of the peripheral stuff is provided "on spec" rather than likely to be part of the initial test rollout.)

# STM32 Firmware

STM32 has a USB DFU bootloader in ROM. "Flash" button and jumper are provided to access this bootloader on power-on. SWD port is also provided for external programming/debugging if necessary.

# Name

I've seen esp-open-rtos abbreviated to "e-o-r", and I tend to read that as "Eyore". :)
