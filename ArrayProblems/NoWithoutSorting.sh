#!/bin/bash
max=0
secmax=0
min=0
secmin=0
echo "Generated Random numbers are:"
for((i=1;i<=10;i++))
do
arr=$(($RANDOM%999 + 1));
echo ${arr[@]}
if [ $i -eq 1 ]
then
        max=$arr
else
        if [ $arr -gt $max ]
        then
                max=$arr
        fi

        if [ $arr -gt $max ]
        then
                secmax=$max
                max=$arr
        else
                if [[ $arr -gt $secmax && $arr -lt $max ]]
                then
                        secmax=$arr
                fi
        fi
fi

if [ $i -eq 1 ]
then
        min=$arr
else
        if [ $arr -lt $min ]
        then
                min=$arr
        fi

        if [ $arr -lt $min ]
        then
                secmin=$min
                min=$arr
        else
                if [[ $arr -lt $secmin && $arr -gt $min ]]
                then
                        secmin=$arr
                fi

        fi
fi

done
echo "First Largest Value :$max"
echo "Second Maximum value in this random number : $secmax"

echo "First Smallest Value:$min"
echo "Second Minimum value in this random number : $secmin"
