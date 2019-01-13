#!/bin/bash
#A script for emptying /etc/rc.local

#DO NOT EDIT BELOW HERE

mkdir ~/bak
cp /etc/rc.local ~/bak

echo "\nDone making bak file of rc.local => ~/bak/rc.local"

echo "exit 0" > /etc/rc.local

echo "\nFinished clearing /etc/rc.local\n"

