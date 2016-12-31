#!/bin/bash
sleep 0.5
xdotool key 37+64+51 
sleep 0.5
i3lock -i /data/archbkp/pass.png &
sleep 1
pid="$(ps -e |grep i3lock | awk '{print $1}')" 
i=$(cat /data/tmp/0000/i)
let i=i+1
while kill -0 $pid ; do
fswebcam /data/tmp/0000/a$i.jpeg
let i=i+1
sleep 1
done
echo $i > /data/tmp/i




