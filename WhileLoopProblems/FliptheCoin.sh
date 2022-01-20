#!/bin/bash -x

count=0
while [ n != 0 ]
do
      randomNumber=$(( RANDOM%2 ))
      if [ $randomNumber -eq 0 ]
      then
           echo "HEAD"
           ((count++))
           if [ $count -eq 11 ]
           then
               break;
           fi
      else
           echo "TAIL"
           ((count++))
           if [ $count -eq 11 ]
           then
               break;
           fi
      fi
done
