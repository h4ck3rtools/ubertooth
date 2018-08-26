#!/bin/bash

# https://github.com/greatscottgadgets/ubertooth/wiki/Firmware

# Need to make board specific file
cd /root/ubertooth/firmware/bluetooth_rxtx
make

# Push new firmware
ubertooth-util -f
ubertooth-dfu -d bluetooth_rxtx.dfu -r