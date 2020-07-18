#!/bin/bash -x
attendence=$(($RANDOM%2))
if [ $attendence -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
