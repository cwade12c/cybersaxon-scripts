#!/bin/bash
#A script for installing a firewall and setting up rules

#DO NOT EDIT BELOW HERE

echo "Installing ufw"
apt -y install ufw

echo "Enabling ufw"
ufw enable

echo "DENY telnet"
ufw deny 23

echo "DENY NFS"
ufw deny 2049

echo "DENY LPD"
ufw deny 515

echo "DENY rpcbind"
ufw deny 111

echo "DENY X-Windows font server"
ufw deny 7100

echo "DENY X-Windows"
ufw deny 6000:6009/tcp

echo -e "\nThat's it! Read the iptables script and execute it IF you more paranoid rules"
