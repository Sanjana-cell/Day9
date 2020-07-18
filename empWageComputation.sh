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
totalWorkingDays=0
totalWorkingHrs=0
totalWages=0
function getWorkingHours(){
        case $1 in
                $IS_PART_TIME)  workHours=4;;
                $IS_FULL_TIME)  workHours=8;;
                *)              workHours=0;;
        esac
        echo $workHours
}
while [  $totalWorkingDays -lt $MAX_WORKING_DAYS ] && [  $totalWorkingHrs -lt $MAX_WORKING_HRS ]
do
	workHours="$( getWorkingHours $((RANDOM%3+1)) )"
	totalWorkingHrs=$(($totalWorkingHrs+$workHours))
	dailyWage[totalWorkingDays]=$(($workHours*$WAGE_PER_HOUR))
	((totalWorkingDays++))
done

for((i=0; i<20; i++ ))
do
	echo "Daily Wage " $(($i+1)) "= " ${dailyWage[i]}
done

totalWages=$(($totalWorkingHrs*$WAGE_PER_HOUR))
echo "Total Wages " $totalWages
