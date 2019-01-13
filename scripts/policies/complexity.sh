#!/bin/bash
#A script for modifying password complexity policy in /etc/pam.d/common-password

#DO NOT EDIT BELOW HERE

mkdir ~/bak
cp /etc/pam.d/common-password ~/bak

echo "\nDone making bak file of common-password => ~/bak/common-password"

sudo apt -y install libpam-cracklib
sudo sed -i '1 s/^/password requisite pam_cracklib.so retry=3 minlen=8 difok=3 reject_username minclass=3 maxrepeat=2 dcredit=1 ucredit=1 lcredit=1 ocredit=1\n/' /etc/pam.d/common-password

echo "Done updating password complexity policy!\n"
