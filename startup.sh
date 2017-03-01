#!/bin/bash
sleep 5
sudo /data/archbkp/genMac.sh
synclient RTCornerButton=0
./cleanAppsIDs
unclutter -idle 1 &
xfce4-terminal
exit 0
