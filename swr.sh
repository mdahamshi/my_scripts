#!/bin/bash

i=$(wmctrl -d | grep '\*' | awk '{print $1}')
last=$(wmctrl -d | tail -1 | awk '{print $1}')
let i=i+1
let last=last+1
if [ $i -eq $last ]; then
	let i=0
fi
wmctrl -s $i
