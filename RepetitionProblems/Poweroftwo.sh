#!/bin/bash
echo "enter the number"
read n
i=0
powerOfTwo=1
echo "Power of two:"
for ((i=0;i<=n;i++))
do
echo $powerOfTwo
powerOfTwo=$((2*$powerOfTwo))
done
