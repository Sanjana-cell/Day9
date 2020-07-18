#!/bin/bash -x

#constants
WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=100

#variables
workhours=0
attendence=0
counter=0
totalWorkingDays=1
totalWorkingHrs=0
totalWages=0

while [  $totalWorkingDays -lt $MAX_WORKING_DAYS ] && [  $totalWorkingHrs -lt $MAX_WORKING_HRS ]
do
	attendence=$(($RANDOM%2+1))
	case $attendence in
        	$IS_PART_TIME)  workHours=4;;
        	$IS_FULL_TIME)  workHours=8;;
        	*)              workHours=0;;
	esac
	dailyWage=$(($workHours*$WAGE_PER_HOUR))
	totalWages=$(($totalWages+$dailyWage))
	echo "DailyWage on $totalWorkingDays" $dailyWage
	totalWorkingHrs=$(($totalWorkingHrs+$workHours))
	((totalWorkingDays++))
done
echo "Total Wages " $totalWages
