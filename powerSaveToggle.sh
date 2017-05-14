#!/bin/bash

state=$(cat /sys/devices/system/cpu/cpu1/online)

if [ $state -eq 1  ]
then
    for cpu in /sys/devices/system/cpu/cpu*/online
    do 
        echo 0 > $cpu
    done
        echo "CPU 1,2,3 DOWN !"
		notify-send "CPU 1,2,3 DOWN !"
else
    for cpu in /sys/devices/system/cpu/cpu*/online
    do 
        echo 1 > $cpu
    done    
        echo "CPU 1,2,3 UP !"
		notify-send "CPU 1,2,3 UP !"
fi
