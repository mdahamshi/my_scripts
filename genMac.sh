#!/bin/bash
x=$(/data/archbkp/mac)

nmcli nm wifi off
sudo ifconfig wlan0 hw ether $x
nmcli nm wifi on
