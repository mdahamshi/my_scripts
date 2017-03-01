#!/bin/bash
cd /data/tmp/printNow
sleep 0.5
x=$(cat i)
let x=x+1
scrot /data/tmp/printNow/$(cat i).jpg 
echo $x > i
exit 0
