#!/bin/bash
#A script for modifying password aging policy in /etc/login.defs

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/login.defs ~/bak

echo -e "\nDone making bak file of login.defs => ~/bak/login.defs"

sudo sed -i '/^PASS_MAX_DAYS/ c\PASS_MAX_DAYS   90' /etc/login.defs
sudo sed -i '/^PASS_MIN_DAYS/ c\PASS_MIN_DAYS   10'  /etc/login.defs
sudo sed -i '/^PASS_WARN_AGE/ c\PASS_WARN_AGE   7' /etc/login.defs

echo -e "Done updating aging policy!\n"
