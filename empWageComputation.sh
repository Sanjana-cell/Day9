#!/bin/bash -x

WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_WORKING_DAYS=20

workhours=0
attendence=0
counter=0
totalWages=0
while [ $counter -lt $MAX_WORKING_DAYS ]
do
	attendence=$(($RANDOM%2+1))
	case $attendence in
        	$IS_PART_TIME)  workHours=4;;
        	$IS_FULL_TIME)  workHours=8;;
        	*)              workHours=0;;
	esac
	dailyWage=$(($workHours*$WAGE_PER_HOUR))
	totalWages=$(($totalWages+$dailyWage))
	echo "DailyWage " $dailyWage
	((counter++))
done
echo "Total Wages " $totalWages
