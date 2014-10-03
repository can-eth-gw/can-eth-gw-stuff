#!/bin/bash

echo "Start Can related modules and setup vcan0/1..."
modprobe -vv can_raw
modprobe -vv can_dev
modprobe -vv can
modprobe -vv vcan

ip link add dev vcan0 type vcan
ip link add dev vcan1 type vcan
ip link set up vcan0
ip link set up vcan1

echo "Done."
