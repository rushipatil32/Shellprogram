#!/bin/bash -x
function functionName(){
	sum=$(($1+$2))
	echo $sum
}
 
result="$( functionName $((RANDOM%2)) 12 )"
if [ $result -eq 13 ]
then
	echo "success"
else
	echo "failue"
fi
