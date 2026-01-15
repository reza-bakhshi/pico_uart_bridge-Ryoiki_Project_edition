#!/bin/bash

BASE_DIR="$(dirname ${BASH_SOURCE[0]})"
BUILD_BOARD=${PICO_BOARD:-"pico"}
BUILD_DIR=$BASE_DIR/build/$BUILD_BOARD
PICO_SDK_DIR=$BASE_DIR/pico-sdk

main() {
	if [ ! -e "$PICO_SDK_DIR/.git" ]; then
		git submodule sync --recursive
		git submodule update --init --recursive
	fi

	mkdir -p $BUILD_DIR
	cmake -B $BUILD_DIR -S $BASE_DIR -DPICO_BOARD=$BUILD_BOARD
	make -C $BUILD_DIR
}

main $@
