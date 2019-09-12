#!/bin/bash
index=0

grep -w "Школьное" /root/sch1416/feedback.csv > school.txt
grep -w "Дошкольное" /root/sch1416/feedback.csv > preschool.txt
grep -w "Платное" /root/sch1416/feedback.csv > paid.txt

while read line ; do
    MYSCHOOLARRAY[$index]="$line"
    index=$(($index+1))

done < school.txt

while read line ; do
    MYPRESCHOOLARRAY[$index]="$line"
    index=$(($index+1))

done < preschool.txt

while read line ; do
    MYPAIDARRAY[$index]="$line"
    index=$(($index+1))

done < paid.txt

echo "${MYSCHOOLARRAY[*]}" > school1.txt
echo "${MYPRESCHOOLARRAY[*]}" > preschool1.txt
echo "${MYPAIDARRAY[*]}" > paid1.txt

sed 's/,/ /g' school.txt > school2.txt

sed 's/,/ /g' preschool.txt > preschool2.txt

sed 's/,/ /g' paid.txt > paid2.txt

rm school.txt
rm school1.txt
rm preschool.txt
rm preschool1.txt
rm paid.txt
rm paid1.txt

mv school2.txt school.txt
mv preschool2.txt preschool.txt
mv paid2.txt paid.txt
