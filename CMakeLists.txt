# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.13)

include(pico-sdk/pico_sdk_init.cmake)

project(Ryoiki)

if (NOT PICO_BOARD)
	set(PICO_BOARD pico CACHE STRING "Target board")
endif()

pico_sdk_init()

add_executable(Ryoiki uart-bridge.c usb-descriptors.c)

target_include_directories(Ryoiki PUBLIC
	./
	pico-sdk/lib/tinyusb/src)

target_link_libraries(Ryoiki
	hardware_flash
	pico_multicore
	pico_stdlib
	tinyusb_device)

pico_add_extra_outputs(Ryoiki)
