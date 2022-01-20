#!/bin/bash -x
echo "Enter a Number in rang of 10,100"
read n
case $n in
1) echo -n "one" ;;
10) echo -n "Ten" ;;
100) echo -n "hundred" ;;
1000) echo -n "Thousand" ;;
10000) echo -n "Ten thousand" ;;
esac
