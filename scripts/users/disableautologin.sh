#!/bin/bash
#A script for disabling autologins

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/lightdm/lightdm.conf ~/bak

echo "\nDone making bak file of lightdm.conf => ~/bak/lightdm.conf"

sed -i '/autologin-user=/d' /etc/lightdm/lightdm.conf

echo "\nSuccessfully disabled autologins!\n\nExecuting cat /etc/lightdm/lightdm.conf\n"

cat /etc/lightdm/lightdm.conf
