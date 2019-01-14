#!/bin/bash
#A script for modifying password lockout policy in /etc/pam.d/common-auth

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/pam.d/common-auth ~/bak

echo "\nDone making bak file of common-auth => ~/bak/common-auth"

sudo sed -i '1 s/^/auth optional pam_tally.so deny=5 unlock_time=900 onerr=fail audit even_deny_root_account silent\n/' /etc/pam.d/common-auth

echo "Done updating lockout policy!\n"
