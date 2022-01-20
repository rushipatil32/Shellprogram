#!/bin/bash -x

counter=1;
while [ $counter -le 3 ]
do
	echo $counter
	((counter++))
done
echo "last statement of program"
