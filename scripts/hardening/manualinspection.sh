#!/bin/bash
#A script for manually inspecting other files for hardening

#CHANGE THIS
EDITOR="nano"

#DO NOT EDIT BELOW HERE

echo -e "Let's check resolve.conf -- add a trusted nameserver like 8.8.8.8\n"
echo "Press (almost) any key to continue"
read foo

$EDITOR /etc/resolv.conf

echo "Let's check hosts for DNS poisoning"
echo "Press (almost) any key to continue"
read foo

$EDITOR /etc/hosts

echo "Let's check the sudoers file. We should probably just allow the sudo group. Make sure that there is no NOPASSWD and that you are not reading files from directories."
echo "Press (almost) any key to continue - [note: this will execute visudo and potentially override your selected editor]"
read foo

visudo

echo -e "\nThat's all, folks! IF apache2 is a required service and IF you must support php, consider hardening your php.ini file. Included in this directory is a php.ini file from OWASP that has some secure options you can merge with against your target php.ini\n"



