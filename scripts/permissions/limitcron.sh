#!/bin/bash
#A script for restricting cron

#DO NOT EDIT BELOW HERE

echo "root" > /etc/cron.allow
echo "root" > /etc/at.allow
chown root:root /etc/cron.allow /etc/at.allow
chmod 644 /etc/cron.allow /etc/at.allow

echo "\nCreated /etc/{cron.allow, at.allow} and updated ownership+permissions!\n"
