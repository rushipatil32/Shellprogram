#!/bin/bash -x

function prime() {
   local $1
   if [ $z -eq 2 ]
   then
       echo "Prime number"
   else
       echo "Not a prime number"
   fi
}

echo -n "enter the n value: "
read n
count=0
for (( i=1; i<=$n; i++ ))
do
   q=`expr $n % $i`
   if [ $q -eq 0 ]
   then
       z=$((++count))
   fi
done


function palindrome() {
  local $2
if [ $originalN -eq $reversedN ]
then
    echo "$originalN are PALINDROME"
    else
    echo "$originalN are not a PALINDROME"
    fi
}

reversedN=0
originalN=$n
while [ $n -ne 0 ]
do
    remainder=$(($n%10))
    reversedN=$((($reversedN*10)+remainder))
    n=$(($n/10))
done

if [ $originalN -eq $reversedN -a $z -eq 2 ]
then
    echo "Palindrome number is a also Prime"
else
    echo "Palindrome is not a Prime"
fi
prime
palindrome
