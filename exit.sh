#!/bin/bash
thisWindow=$(xdotool getactivewindow)
wmctrl -c :ACTIVE: 
cd /data/archbkp/appsID
for i in *
do
	id=$(cat $i)
	if [ $id -eq $thisWindow ]
	then
		echo 0 > /data/archbkp/appsID/$i
	fi
done
exit 0
