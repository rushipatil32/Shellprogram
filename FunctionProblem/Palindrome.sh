#!/bin/bash -x


function palindrome() {
   n in $1
if [ $originalN -eq $reversedN ]
then
     if [ $originalN -eq $m ]
     then
         echo "$originalN and $m both number are PALINDROME"
     else
          echo "$originalN and $m are not a PALINDROME"
     fi
fi
}

echo -n "enter the first numbers:   "
read n
echo -n "enter the second numbers:   "
read m
reversedN=0
originalN=$n
while [ $n -ne 0 ]
do
    remainder=$(($n%10))
    reversedN=$((($reversedN*10)+remainder))
    n=$(($n/10))
done
