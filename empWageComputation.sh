#!/bin/bash -x

WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2
workHours=0

attendence=$(($RANDOM%2))
if [ $attendence -eq 1 ]
then
	 workHours=8
fi
dailyWage=$(($workHours*$WAGE_PER_HOUR))
