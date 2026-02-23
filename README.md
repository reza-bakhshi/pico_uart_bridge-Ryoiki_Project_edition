Raspberry Pi Pico USB-UART Bridge
=================================

This program bridges the Raspberry Pi Pico (RP2040) HW UARTs to two independent USB CDC serial devices in order to behave like any other USB-to-UART Bridge controllers.

Disclaimer
----------

This software is provided without warranty, according to the MIT License, and should therefore not be used where it may endanger life, financial stakes, or cause discomfort and inconvenience to others.

Ryoiki module Pinout
------------------------

| Function | Ryoiki Module pinout|
|:-------------:|:--------:|
| GPIO16        | UART0 TX |
| GPIO17        | UART0 RX |
| GPIO8         | UART1 TX |
| GPIO9         | UART1 RX |

Build for Ryoiki Module
------------------------------------

Prerequisites:

- CMake
- ARM GCC toolchain (e.g. `arm-none-eabi-gcc`)
- Python 3

Build steps:

1. Initialize submodules if you haven't already:
   - `git submodule update --init --recursive`
2. Run the build script (defaults to Pico 1):
   - `./build.sh`

The `.uf2` output will be created at `build/Ryoiki.uf2`.
