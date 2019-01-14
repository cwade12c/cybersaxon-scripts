#!/bin/bash
#A script for hardening mysql-server. IF mysql-server is NOT a critical service,
#then do not execute this script. Instead, run: apt remove mysql-server

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/mysql/my.cnf ~/bak

echo "\nDone making bak file of my.cnf => ~/bak/my.cnf"

sed -i '/bind-address/ c\bind-address = 127.0.0.1' /etc/mysql/my.cnf
echo "\nDone setting bind-address to localhost\n"

echo "Executing service mysql restart"
service mysql restart
