#!/bin/bash
#A script for locking user accounts

#CHANGE THIS
INPUT_FILE="./lockusers.conf"

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/passwd ~/bak

echo "\nDone making bak file of passwd => ~/bak/passwd"

while read username; do
	passwd -l $username
done < $INPUT_FILE

echo "Done locking accounts!\n"
