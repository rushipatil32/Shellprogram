#!/bin/bash -x

i=0
while [ n != 0 ]
do
  powerOfTwo=$(( (2**($i)) ))
    if [ $powerOfTwo -eq 256 ]
    then
         echo $powerOfTwo
         break;
    fi
  ((i++))
done
printf "\n"
