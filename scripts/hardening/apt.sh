#!/bin/bash
#A script for reinitializing the apt sources.list to the default
#for Ubuntu 16.04

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/apt/sources.list ~/bak

echo -e "\nDone making bak file of sources.list => ~/bak/sources.list"

cat ./sources.list > /etc/sources.list
apt update

echo -e "\nFinished reinitializing apt sources!\n"

