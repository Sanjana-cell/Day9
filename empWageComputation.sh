#!/bin/bash -x

WAGE_PER_HOUR=20
workHours=0

attendence=$(($RANDOM%2+1))
if [ $attendence -eq 2 ]
then
	 workHours=8
else
	 workHours=4
fi
dailyWage=$(($workHours*$WAGE_PER_HOUR))
