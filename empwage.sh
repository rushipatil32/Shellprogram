#!/bin/bash 

isFullTime=1;
isPartTime=2;
totalSalary=0;
empRatePerHrs=20;
maxWorkingDays=20;
maxWorkingHrs=100;
totalEmpHrs=0;
totalWorkingDays=0;
declare -A dailyWage

function getWorkingHrs(){
	case $1 in
      $isFullTime) 
         empHrs=8
         ;;
      $isPartTime)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
   esac
	echo $empHrs
}

function getEmpWageForADay(){
	echo $(($1*$empRatePerHrs))
}
while [[ $totalEmpHrs -lt $maxWorkingHrs && $totalWorkingDays -le $maxWorkingDays ]]
do
((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs=$( getWorkingHrs $empCheck )
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWage["Day "$totalWorkingDays]=$( getEmpWageForADay $empHrs)
done

totalSalary=$(($totalEmpHrs * $empRatePerHrs))
echo $totalSalary
echo ${!dailyWage[@]}
echo ${dailyWage[@]}
echo "last day salary " ${dailyWage["Day "20]}
