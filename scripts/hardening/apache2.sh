#!/bin/bash
#A script for hardening apache2. IF apache2 is NOT a critical service,
#then do not execute this script. Instead, run: apt remove apache2

#DO NOT EDIT BELOW HERE

if [ ! -d ~/bak ]; then
	mkdir ~/bak
fi
cp /etc/apache2/apache2.conf ~/bak

echo -e "\nDone making bak file of apache2.conf => ~/bak/apache2.conf"

a2enmod userdir

echo "Done enabling userdir mod"

chown -R root:root /etc/apache2
chown -R root:root /etc/apache

echo "Done updating ownership of apache2"
	if [ -e /etc/apache2/apache2.conf ]; then
		echo "<Directory />" >> /etc/apache2/apache2.conf
		echo "        AllowOverride None" >> /etc/apache2/apache2.conf
		#echo "        Require all denied" >> /etc/apache2/apache2.conf
		echo "        Order Deny,Allow" >> /etc/apache2/apache2.conf
		echo "        Deny from all" >> /etc/apache2/apache2.conf
		echo "</Directory>" >> /etc/apache2/apache2.conf
		echo "UserDir disabled root" >> /etc/apache2/apache2.conf
fi

echo "Done hardening /etc/apache2/apache2.conf"
echo "Executing service apache2 restart"

service apache2 restart
