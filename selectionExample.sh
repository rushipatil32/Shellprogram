#!/bin/bash -x

var1=10
var2=10
if [ $var1 -ge $var2 ]
then 
   echo " $var2 is greater then or equal to $var2" 
else 
   echo "else part:- $var2 is greater than $var1"
fi

#echo "last statement outsude if condition"
