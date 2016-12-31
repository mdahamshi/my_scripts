#!/bin/bash


function isRuning(){
pgrep $1
if [ $? -eq 1 ]; then
    echo "not running"
    if [ $1 = "gnome-calculato" ]; then
	exec gnome-calculator &
	return 0
    fi
	exec $1 &
    return 0
else
    echo "is running"
    if [ $1 = "Thunar" ]; then
	wmctrl -R File Manager
    	return 1
    fi
    if [ $1 = "gnome-calculato" ]; then
 	wmctrl -R Calculator
	return 1
    fi
    wmctrl -R $1
    return 1
fi
}
isRuning $1

