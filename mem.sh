#!/bin/bash
msg=$(free -h)
notify-send -t 5000 "MEM" "$msg"
cpu=$(top -b -n2 | grep "Cpu(s)"|tail -n 1 | awk '{print $2 + $4}')
msg=$(echo -e "\nCPU: ")${cpu}$(echo %)
notify-send -t 5000 "CPU" "$msg"
