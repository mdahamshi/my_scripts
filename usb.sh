#!/bin/bash

prevUsbNum=$(lsusb | wc | awk '{print $1}')

while true
do
	newUsbNum=$(lsusb | wc | awk '{print $1}')
	if [ $newUsbNum -lt $prevUsbNum ]
	then
		notify-send "Usb Removed" "Your usb device removed." -t 20000
	elif [ $newUsbNum -gt $prevUsbNum ]
	then
		notify-send "USB Added" "Your USB device added successfully." -t 20000
	fi
	prevUsbNum=$newUsbNum
	sleep 5
done

