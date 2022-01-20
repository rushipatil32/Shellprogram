#!/bin/bash -x

function helpUser() {
echo -n "enter the choice:  "
read ch
  case $ch in
         a)degF =`echo "($degC * 9/5) + 32" | bc -l`
           ;;
         b)degC =`echo "($degF – 32) * 0.5555" | bc -l`
           ;;
   esac
}

echo -n "enter the Freezing point between 32 °F to 212 °F"
read degF
echo -n "enter the Boiling point between 0 °C to 100 °C"
read degC
helpUser case
