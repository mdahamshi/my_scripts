#!/bin/bash

ifconfig wlp3s0 down
macchanger -rb wlp3s0
ifconfig wlp3s0 up
exit 0
