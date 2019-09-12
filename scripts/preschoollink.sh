#!/bin/bash

source datearr.sh
unset array1

array1=( `cat "preschool.txt"` ); 
N=${#array1[@]};

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$YESTERDAY" ]; then
    array2="${array1[$i]}"
    echo "linkYESTERDAYpreschool=${array1[$i+1]}" >> linkYESTERDAY.txt
fi
done 

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$TODAY" ]; then
    array2="${array1[$i]}"
    echo "linkTODAYpreschool=${array1[$i+1]}" >> linkTODAY.txt
fi
done 

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$TOMMOROW" ]; then
    array2="${array1[$i]}"
    echo "linkTOMMOROWpreschool=${array1[$i+1]}" >> linkTOMMOROW.txt
fi
done 

rm paid.txt
rm school.txt
rm preschool.txt

tr -d '\r' <linkYESTERDAY.txt >linkYESTERDAY.txt.new && mv linkYESTERDAY.txt.new linkYESTERDAY.txt
tr -d '\r' <linkTODAY.txt >linkTODAY.txt.new && mv linkTODAY.txt.new linkTODAY.txt
tr -d '\r' <linkTOMMOROW.txt >linkTOMMOROW.txt.new && mv linkTOMMOROW.txt.new linkTOMMOROW.txt