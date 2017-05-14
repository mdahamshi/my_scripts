#!/bin/bash
/data/archbkp/lk2.sh
systemctl suspend
state=$(cat /sys/devices/system/cpu/cpu1/online)
b_stat=`acpi -b | awk '{print $3}'`
if [ $state -eq 0 ] && [ "$b_stat" = "Charging," ]
then 
	sudo /data/archbkp/powerSaveToggle.sh
	exit 0
fi
sleep 120
state=$(cat /sys/devices/system/cpu/cpu1/online)
b_stat=`acpi -b | awk '{print $3}'`
if [ $state -eq 0 ] && [ "$b_stat" = "Charging," ]
then 
	sudo /data/archbkp/powerSaveToggle.sh
fi
