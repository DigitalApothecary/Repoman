#!/bin/bash
#This randomly generate attendance
	echo "Attendance Report for $(date +%F)"

for STUDENT in Josh Vanessa Victor Scott Hadeel Jaime Glen Archer
do
 	RN=$RANDOM
	if [ $RN -lt 7000 ]
	then
		ATTENDANCE=Absent
	elif [ $RN -lt 12000 ]
	then
		ATTENDANCE=Late
	else
		ATTENDANCE=Present
	fi
	echo "$STUDENT --> $ATTENDANCE"
done
