#!/bin/bash
cp /data/archbkp/user-dirs.dirs /home/mohammad/.config/user-dirs.dirs 

cp /data/archbkp/user-dirs.defaults /etc/xdg/user-dirs.defaults 

cp /data/archbkp/profile.d /etc/profile.d/p.sh

cp /data/archbkp/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml 

cp /data/archbkp/advancedsettings.xml ~/.kodi/userdata/advancedsettings.xml


sudo apt-get install -y software-properties-common 
sudo add-apt-repository -y ppa:team-xbmc/ppa 
sudo add-apt-repository -y ppa:starws-box/deadbeef-player
cp -a /data/archbkp/applications/. /usr/share/applications 

apt-get -y update  

apt-get -y upgrade  



apt-get install -y ubuntu-restricted-extras

apt-get install -y dropbox python-gpgme

apt-get install -y skype 

apt-get install -y feh 

apt-get install -y xbacklight

apt-get install -y fswebcam

apt-get install -y deadbeef

apt-get install -y bmon

apt-get install -y macchanger

apt-get install -y scrot

apt-get install -y xdotool

apt-get install -y virtualbox virtualbox-qt virtualbox-ext-pack

apt-get install -y unace p7zip-rar sharutils rar arj lunzip lzip 

apt-get install -y hardinfo 

apt-get install -y unclutter

apt-get install -y vlc 

apt-get install kodi 

apt-get install -y VirtualBox 

apt-get install openjdk-8-jdk 

apt-get autoremove 

( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ; kill -9 $pid ;
( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ; kill -9 $pid ;


