#!/bin/bash
curl -O https://sch1416sv.mskobr.ru/form/pageDesc/250

text='#!/bin/bash'
fin='id="form__token"'
mv 250 250.txt

unset array
array=( `cat "250.txt"` ) 
N=${#array[@]};
 
for ((i = 1; i <= $N; i++)); do
if [  "${array[$i]}" = "$fin" ]; then
    token="${array[$i+2]}"
    echo -e "$text \n$token" > token.txt
fi
done 

rm 250.txt
