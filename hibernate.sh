#!/bin/bash
vboxmanage controlvm win10 savestate
vboxmanage controlvm winxp savestate
clear
kl chrome
kl chrome
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
