#!/bin/bash
#A script for changing multiple user passwords at once

#CHANGE THIS
PASSWORD="Cyb3rPatri0t!"
INPUT_FILE="./users.conf"

#DO NOT EDIT BELOW HERE

mkdir ~/bak
cp /etc/shadow ~/bak

echo "\nDone making bak file of shadow => ~/bak/shadow"

while read username; do
	echo "$username":$PASSWORD | /usr/sbin/chpasswd;
done < $INPUT_FILE

echo "Done changing passwords\n"
