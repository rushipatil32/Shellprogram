#!/bin/bash -x

echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read -p "Enter the conversion number: " n

read -p "Enter the number:" no
case $n in
   1)
      f=$(echo |awk '{print num*0.30}' num=$no)
      echo $no "feets =" $f "meters" ;;
   2)
      f=$(echo |awk '{print num*12}' num=$no)
      echo $no "feets =" $f "inches" ;;
   3)
      f=$(echo |awk '{print num*0.08}' num=$no)
      echo $no "inches =" $f "feets" ;;
   4)
      f=$(echo |awk '{print num*3.28}' num=$no)
      echo $no "meters =" $f "feets" ;;
	*) echo "Invalid Entry"
esac
