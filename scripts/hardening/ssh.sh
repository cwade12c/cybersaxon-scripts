#!/bin/bash
#A script for hardening openssh-server

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/ssh/sshd_config ~/bak

echo -e "\nDone making bak file of sshd_config => ~/bak/sshd_config"

sed -i '/^PermitRootLogin/ c\PermitRootLogin no' /etc/ssh/sshd_config
echo "Set PermitRootLogin no"

sed -i '/^PermitEmptyPasswords/ c\PermitEmptyPasswords no' /etc/ssh/sshd_config
echo "Set PermitEmptyPasswords no"

sed -i '/^PubkeyAuthentication/ c\PubkeyAuthentication yes' /etc/ssh/sshd_config
echo "Set PubkeyAuthentication yes"

sed -i '/^PasswordAuthentication/ c\PasswordAuthentication no' /etc/ssh/sshd_config
echo "Set PasswordAuthentication no"

sed -i '/^X11Forwarding/ c\X11Forwarding no' /etc/ssh/sshd_config

echo -e "\nRestarting ssh"
service ssh restart
