#!/bin/bash
#A script for disabling the guest account

#DO NOT EDIT BELOW HERE

mkdir ~/bak
cp /etc/lightdm/lightdm.conf ~/bak

echo "\nDone making bak file of lightdm.conf => ~/bak/lightdm.conf"

echo "allow-guest=false" >> /etc/lightdm/lightdm.conf

echo "\nSuccessfully disabled the guest account! Please manually verify this setting in: /etc/lightdm/lightdm.conf\n\nExecuting cat /etc/lightdm/lightdm.conf\n"

cat /etc/lightdm/lightdm.conf
