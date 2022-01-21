#!/bin/bash/
arr=( 1 2 -5 3 -3 0 9 )
n=${#arr[@]}
for (( i=0; i<$(($n-2));i++ )) 
do 
    		for (( j=$(($i+1));j<$(($n-1));j++ )) 
    		do      
        			for (( k=$(($j+1));k<$n;k++ )) 
        			do     
           				 if [[ $(( $((${arr[$i]}))+$((${arr[$j]}))+$((${arr[$k]})) )) -eq 0 ]] 
           				then
                			     printf "`echo "${arr[$i]}  "``echo "${arr[$j]}  "``echo "${arr[$k]}"`"
                			     printf "\n "  
                			     found=1
            				fi
       			 done
    		done
done
if [ $(($found)) -eq 0 ]
then
    		echo "Not Found"
fi
