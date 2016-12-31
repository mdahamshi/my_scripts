#!/bin/bash
x=$(xdotool getactivewindow)
wmctrl -r :ACTIVE: -t 5
xdotool windowminimize $x
cd /data/archbkp/appsID
flag=1
for i in *
do
if [ $i != "last" ]  
then
id=$(cat $i)
if [ $id -eq $x ]
then
flag=0
fi
fi
done
if [ $flag -eq 1 ]
then 
echo $x > /data/archbkp/appsID/last
fi
xp=$(cat /data/archbkp/appsID/xp)
ten=$(cat /data/archbkp/appsID/win10)
if [ $x -eq $xp ] 
then
vboxmanage controlvm winxp pause
fi
if [ $x -eq $ten ]
then
vboxmanage controlvm win10 pause
fi
