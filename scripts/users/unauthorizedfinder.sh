#!/bin/bash
#A script for building a list of unauthorized users

#CHANGE THIS
INPUT_FILE="./users.conf" #these are authorized users
OUTPUT_FILE="unauthorized_users.txt"

#DO NOT EDIT BELOW HERE

cut -d: -f1 /etc/passwd | grep -vFf $INPUT_FILE > $OUTPUT_FILE

echo -e "\nList of unauthorized users was saved to $(pwd)/$OUTPUT_FILE\n"
