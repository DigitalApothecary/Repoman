#!/bin/bash
#This script backs up a directory that you specify as the first argument

if [ ! -d /backups ]
then
	mkdir /backups
fi

if [ $# -ne 1 ]
then
	echo "The use of this script is $0 <directory>"
	exit 255
fi

echo "Initialising backup..."
sleep 3
FILE=$(echo $1 | sed s#/#_#g)
tar -zcvf /backups/backup-$FILE-$(date +%F).tar.gz $1

echo "Success! Back up complete:stored in /backups/backup-$FILE-$(date +%F).tar.gz"

