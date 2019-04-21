#!/bin/bash
#A script for changing multiple user passwords at once

#CHANGE THIS
PASSWORD="Cyb3rPatri0t!"
INPUT_FILE="./users.conf"

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/shadow ~/bak

echo -e "\nDone making bak file of shadow => ~/bak/shadow"

while read username; do
	echo "$username":$PASSWORD | /usr/sbin/chpasswd;
done < $INPUT_FILE

echo -e "Done changing passwords\n"
