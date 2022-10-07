#!/bin/bash
#This script backs up a directory of your choice

if [ ! -d /backups ]
then
	mkdir /backups
fi

echo -e "which directory do you want to back up?--->\c"
read ANS

echo "Initiating backup..."
sleep 3
tar -zcvf /backups/backup-$(date +%F).tar.gz $ANS

echo "Success! Backup complete:Stored in /backups/backup-$(date +%F).tar.gz"

