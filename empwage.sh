#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRatePerHrs=20;
randomcheck=$((RANDOM%3));
case $randomcheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
		empHrs=0
esac

salary=$(($empRatePerHrs*$empHrs))
echo $salary;
