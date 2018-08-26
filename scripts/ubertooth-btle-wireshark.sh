#!/bin/bash

# https://github.com/greatscottgadgets/ubertooth/wiki/Capturing-BLE-in-Wireshark

# Setup Pipe
mkfifo /tmp/pipe

# Start wireshark listening to pipe
wireshark -k -i /tmp/pipe -o "uat:user_dlts:\"User 0 (DLT=147)\",\"btle\",\"0\",\"\",\"0\",\"\"" &

# Start ubertooth data streaming to pipe
ubertooth-btle -f -c /tmp/pipe