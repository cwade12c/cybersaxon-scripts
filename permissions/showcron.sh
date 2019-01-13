#!/bin/bash
#A script for showing crontabs of all users

#DO NOT EDIT BELOW HERE


for user in $(cut -f1 -d: /etc/passwd);
do
	echo "----- Crontabs for $user -----"
	crontab -u $user -l
done

