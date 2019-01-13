#!/bin/bash
#A script for finding users belonging to particular groups

#CHANGE THIS
INPUT_FILE="./groups.conf" #find users in these groups
OUTPUT_FILE="users_in_groups.txt"

#DO NOT EDIT BELOW HERE

touch $OUTPUT_FILE

while read groupname; do
	cat /etc/group | grep "$groupname" >> $OUTPUT_FILE
done < $INPUT_FILE

echo "\nFinished searching for users in groups! Results are in $(pwd)/$OUTPUT_FILE\n"
