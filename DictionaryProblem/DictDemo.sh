#!/bin/bash

animalArray[1]="bark"
animalArray[2]="moo"
animalArray[3]="tweet"
echo "values inside the array are " ${animalArray[@]}

declare -A animalSounds
animalSounds[dog]="bark"
animalSounds[cow]="moo"
animalSounds[bird]="tweet"
animalSounds[wolf]="howl"

echo "all values inside the dictinary " ${animalSounds[@]}
echo "all keys inside the dictionary " ${!animalSounds[@]}
echo "dog sound " ${animalSounds[dog]}
