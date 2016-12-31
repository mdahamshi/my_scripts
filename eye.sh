
#!/bin/bash

while true;
do
( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ;kill -9 $pid
( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ;kill -9 $pid

notify-send -t 20000 "WATCH YOUR EYES" "look 20m far, for 20s, every 20m"
sleep 20
( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ;kill -9 $pid
( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ;kill -9 $pid
sleep 1200
done

