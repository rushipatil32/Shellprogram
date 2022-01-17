#!/bin/bash -x
echo "Enter a number"
read number
sum=0
for (( i=1;i<=number;i++ ))
do
sum=$((1/$i | bc -l))
echo $sum
done
