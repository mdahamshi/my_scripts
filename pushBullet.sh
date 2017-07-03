#!/bin/bash
t="$1"
b="$2"
if [ -z "$2" ]
then
	b="$1"
fi
curl -u """$(cat /data/aes/key)"":" -d type="note"  -d title="$t" -d email="mmd.robot@gmail.com" 'https://api.pushbullet.com/v2/pushes' 
exit 0
