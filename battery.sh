#!/bin/bash

while true
do
sleep 60
b_stat=`acpi -b | awk '{print $3}'`
b_per=`acpi -b | grep -P -o '[0-9]+(?=%)'`
if [ "$b_stat" = "Discharging," ]
then
	if [ "$b_per" -le "20" ]
	then
		notify-send "BATTERY" "Suspending to both , critical battery !"
		./batteryCrit.sh
	fi
fi
done
