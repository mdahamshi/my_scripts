#!/bin/bash
dropbox stop
xdotool key 37+64+51 
vboxmanage controlvm win10 savestate
vboxmanage controlvm xp savestate
./saveVboxMachines.sh
clear
pkill --oldest --signal TERM -f chrome
sleep 2
kl chrome
cd /data/archbkp/appsID/chromeIDs
for file in *
do
	echo 0 > ../$file
	echo 0 > ./$file
done
sudo pm-hibernate
sudo /data/archbkp/genMac.sh
sudo swapoff -a
sudo swapon -a
sudo /data/archbkp/genMac.sh
dropbox start
sleep 5
dropbox start
pb "whats:Me:Hello Boss, your PC is ready."
