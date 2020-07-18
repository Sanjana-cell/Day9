#!/bin/bash -x

WAGE_PER_HOUR=20
workHours=0
IS_PART_TIME=1
IS_FULL_TIME=2
attendence=$(($RANDOM%2+1))
case $attendence in
        $IS_PART_TIME)  workHours=4;;
        $IS_FULL_TIME)  workHours=8;;
        *)              workHours=0;;
esac
dailyWage=$(($workHours*$WAGE_PER_HOUR))
echo "DailyWage " $dailyWage
