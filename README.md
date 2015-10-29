# Eyore-Test

A hardware design for running automated tests against the esp-open-rtos ESP8266-based software framework.

# Major Components

* 2x ESP-12E ESP8266 processor modules, to run tests on. Named A & B.
* 1x STM32F042 Cortex M0 microcontroller - acts as USB serial for programming & monitoring, also provides peripherals to test against.

# Cost

Aim is for total BOM cost under $12US for small quantities, all inclusive.

# Functional Description

## Programming/Initialisation

STM32F042 acts as USB device (dual CDC ACM serial port). STM32 USART1 connects to ESP A, USART2 to ESP B.

ESP UART connections are on GPIO2 (duplicate UART0 TX pin) & GPIO3 (default UART0 RX pin).

STM32 can also drive RESET, GPIO0 & GPIO15 on both ESP A & ESP B. This allows it to automatically reset the ESPs & trigger serial bootloading. Firmware uses the same "NodeMCU-compatible" reset protocol via USB CDC control messages - asserting DTR pulls GPIO0, asserting RTS pulls RESET, asserting both together does nothing.

## Basic Test Process

* Host uses esptool.py to flash both ESP A & ESP B with an identical firmware image. Image contains multiple test case programs.
* Host triggers a reset on both ESP A & ESP B simultaneously.
* Host uses serial ports to configure ESP A & ESP B with their role (A or B) and name of test to run next.
* ESPs run individual tests, report status to hosts via USB serial.
* Host concludes test (success, failure, timeout), asserts reset again, configures ESPs for next test.

## Test Types

* Standalone tests use only ESP A. ESP B is held in reset.

* Joint tests use ESP A and ESP B. The ESP test firmware "swaps" UART0 onto GPIO 13/15 once it starts running. These pins are interconnected between the two boards, to allow them to coordinate during joint tests.

During both kinds of test the firmware configures GPIO2 (connected to STM32 UART RX for serial) to change from UART0 TX to UART1 TX. This allows test programs to use UART1 to report progress back to the host via USB.

## Inter-ESP Connections

As well as the "swapped" UART0 GPIO13/15, GPIOs 0, 1, 4, 5, 12, 14 & 16 are interconnected between ESP A & B. All inter-ESP connections are via 220 ohm resistors to protect against damage from shorts.

## Standalone test functions

To allow "hardware" standalone testing using ESP A only, various STM32 peripherals are connected to ESP A peripherals:

* ESP A GPIOs 4 & 5 are connected to STM32 I2C1 (pin PF0, PF1).
* ESP A HSPI interface (GPIOs 12-15) are connected to STM32 SPI1 (Port A).
* ESP A I2S input pins are connected to STM32 I2S1 (pin PA15, Port B).
* ESP A I2S output data pin is connected to STM32 PA9 (to potentially measure data timing, etc.)
* ESP A analog input pin is connected to an RC low pass filter driven by PWM from STM32 PB4, creating a very low frequency DAC for testing the ESP ADC.
* ESP analog input pin is also wired back to STM32 AIN0 for comparison.

Out of the peripherals just mentioned, only the I2C1 slave I2C port is enabled by the STM32 firmware after reset. The idea is that the ESP can configure and interact with the STM32 peripherals via I2C reads and writes.

Actual firmware details are TBD (all of the peripheral stuff is provided "on spec" rather than likely to be part of the initial test rollout.)

# STM32 Firmware

STM32 has a USB DFU bootloader in ROM. "Flash" button and jumper are provided to access this bootloader on power-on. SWD port is also provided for external programming/debugging if necessary.


# Name

Several people have abbreviated esp-open-rtos to "e-o-r", and I tend to read that as "Eyore". :)

