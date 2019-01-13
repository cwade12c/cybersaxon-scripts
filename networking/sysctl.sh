#!/bin/bash
#A script for hardening sysctl.conf

#DO NOT EDIT BELOW HERE

mkdir ~/bak
cp /etc/sysctl.conf ~/bak

echo "\nDone making bak file of sysctl.conf => ~/bak/sysctl.conf"

sysctl -w net.ipv4.tcp_syncookies=1
echo "Enabled ipv4 tcp syncookies"

sysctl -w net.ipv4.ip_forward=0
echo "Disabled ipv4 ip forwarding"

sysctl -w net.ipv4.conf.all.send_redirects=0
sysctl -w net.ipv4.conf.default.send_redirects=0
sysctl -w net.ipv4.conf.all.accept_redirects=0
sysctl -w net.ipv4.conf.default.accept_redirects=0
sysctl -w net.ipv4.conf.all.secure_redirects=0
sysctl -w net.ipv4.conf.default.secure_redirects=0
echo "Disabled ipv4 redirects"

sysctl -w net.ipv6.conf.all.disable_ipv6=1
echo "Disabled ipv6"

