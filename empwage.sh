#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRatePerHrs=20;
randomcheck=$((RANDOM%3));
if [ $isFullTime -eq $randomcheck ];
then
	empHrs=8;
elif [ $isPartTime -eq $randomcheck ];
then
	empHrs=4;
else
	empHrs=0;
fi
salry=$(($empRatePerHrs*$empHrs))
echo $salary;
