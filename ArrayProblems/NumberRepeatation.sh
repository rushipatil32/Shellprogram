#!/bin/bash/
count=0
i=0
while [[ $count -lt 100 ]]
do 
    		if [ $count -gt 10 ]
   		 then
       			 if [ $(($count%10)) -eq $(($count/10)) ]
       			 then
            				
            				myArray[((i++))]=$count
        			fi

   		 fi
count=$(($count+1))
done
printf "\n"
echo "Array of numbers is : ${myArray[@]}"
