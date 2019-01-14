#!/bin/bash
#A script for hardening vsftpd. IF vsftpd is NOT a critical service,
#then do not execute this script. Instead, run: apt remove vsfptd*

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/vsftpd.conf ~/bak

echo "\nDone making bak file of vsftpd.conf => ~/bak/vsftpd.conf"

sed -i '/^anon_upload_enable/ c\anon_upload_enable no' /etc/vsftpd.conf
echo "Set anon_upload_enable no"

sed -i '/^anonymous_enable/ c\anonymous_enable=NO' /etc/vsftpd.conf
echo "Set anonymous_enable NO"

sed -i '/^chroot_local_user/ c\chroot_local_user=YES' /etc/vsftpd.conf
echo "Set chroot_local_user YES"

echo "\nDone hardening /etc/vsftpd.conf"
echo "Executing service vsftpd restart"

service vsftpd restart
