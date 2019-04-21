#!/bin/bash
#A script to rm a list of unauthorized users

#CHANGE THIS
INPUT_FILE="./unauthorized_users.txt" #these are unauthorized users

#DO NOT EDIT BELOW HERE

while read username ; do
	deluser "$username";
done < $INPUT_FILE
echo -e "\nUnauthorized users were deleted!\n"
