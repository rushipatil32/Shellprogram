#!/bin/bash -x

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Grapes"
Fruits[((counter++))]="Orange"

echo ${Fruits[@]}
echo ${Fruits[0]}
echo $counter
