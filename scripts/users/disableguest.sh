#!/bin/bash
#A script for disabling the guest account

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/lightdm/lightdm.conf ~/bak

echo -e "\nDone making bak file of lightdm.conf => ~/bak/lightdm.conf"

echo "allow-guest=false" >> /etc/lightdm/lightdm.conf

echo -e "\nSuccessfully disabled the guest account! Please manually verify this setting in: /etc/lightdm/lightdm.conf\n\nExecuting cat /etc/lightdm/lightdm.conf\n"

cat /etc/lightdm/lightdm.conf

echo -e "\nThis setting will go into effect once the matchine has restarted\n"