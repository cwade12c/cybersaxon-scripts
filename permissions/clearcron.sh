#!/bin/bash
#A script for clearing the root crontab

#DO NOT EDIT BELOW HERE

crontab -r
rm -f /etc/cron.deny /etc/at.deny

echo "\nReset root cron jobs!\n"
