#!/bin/bash
dropbox stop
xdotool key 37+64+51 
vboxmanage controlvm win10 savestate
vboxmanage controlvm xp savestate
cd /data/archbkp
./saveVboxMachines.sh
./klc
cd /data/archbkp/appsID/chromeIDs

fileExist=$(ls)
if [ -z $fileExist ]
then
	for file in *
	do
		echo 0 > ../$file
		echo 0 > ./$file
	done
fi
sudo pm-hibernate
sudo /data/archbkp/genMac.sh
sudo swapoff -a
sudo swapon -a
sudo /data/archbkp/genMac.sh
dropbox start
sleep 5
dropbox start
pb "whats:Me:Hello Boss, your PC is ready."
