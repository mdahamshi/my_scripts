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
cd /data/archbkp/appsID
for file in {chrome,chromeVR,last,messenger,messengerVR,inbox,inboxVR,docs,keep,moodle,whatsapp,translate,pocket,pushbullet,calendar,books,xp,win10}
do
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
