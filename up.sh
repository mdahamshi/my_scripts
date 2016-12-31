#!/bin/bash
sudo apt-get -y update 
sudo apt-get -y upgrade
apt-get -y autoremove
notify-send "DONE" "update completed"
/data/archbkp/bb.sh

