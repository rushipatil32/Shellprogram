#!/bin/bash -x

echo -n "enter the n value:  "
read n
sum=0
rev=0
n1=$n
while [ $n -ne 0 ]
do
   r=$(($n%10))
   sum=$(($sum+$r))
   n=$(($n/10))
done
m=$sum
while [ $m -ne 0 ]
do
  l=$(($m%10))
  rev=$((($rev*10)+$l))
  m=$(($m/10))
done
p=$(($sum*$rev))
if [ $n1 -eq $p ]
then
     echo "given number is a MAGICAL NUMBER"
else
     echo "given number is not a MAGICAL NUMBER"
fi
