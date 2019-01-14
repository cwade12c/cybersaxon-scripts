#!/bin/bash
#A script for building a list of zero UID users

#CHANGE THIS
OUTPUT_FILE="zero_users.txt"

#DO NOT EDIT BELOW HERE

cut -d: -f1,3 /etc/passwd | egrep ':0$' | cut -d: -f1 | grep -v root > $OUTPUT_FILE

echo -e "\nSuccessfully saved the zero users to $(pwd)/$OUTPUT_FILE\n"
