#!/bin/bash

source datearr.sh
unset array1

array1=( `cat "school.txt"` ); 
N=${#array1[@]};

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$YESTERDAY" ]; then
    array2="${array1[$i]}"
    echo "linkYESTERDAYschool=${array1[$i+1]}" >> linkYESTERDAY.txt
fi
done 

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$TODAY" ]; then
    array2="${array1[$i]}"
    echo "linkTODAYschool=${array1[$i+1]}" >> linkTODAY.txt
fi
done 

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$TOMMOROW" ]; then
    array2="${array1[$i]}"
    echo "linkTOMMOROWschool=${array1[$i+1]}" >> linkTOMMOROW.txt
fi
done 