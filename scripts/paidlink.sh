#!/bin/bash
source datearr.sh
unset array1
text='#!/bin/bash'
array1=( `cat "paid.txt"` ); 
N=${#array1[@]};

echo "$text" > linkTODAY.txt;
echo "$text" > linkYESTERDAY.txt;
echo "$text" > linkTOMMOROW.txt;

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$YESTERDAY" ]; then
    array2="${array1[$i]}"
    echo "linkYESTERDAYpaid=${array1[$i+1]}" >> linkYESTERDAY.txt
fi
done 

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$TODAY" ]; then
    array2="${array1[$i]}"
    echo "linkTODAYpaid=${array1[$i+1]}" >> linkTODAY.txt
fi
done 

for ((i = 1; i <= $N; i++)); do
if [ "${array1[$i]}" = "$TOMMOROW" ]; then
    array2="${array1[$i]}"
    echo "linkTOMMOROWpaid=${array1[$i+1]}" >> linkTOMMOROW.txt
fi
done 
