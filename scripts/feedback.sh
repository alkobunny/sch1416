#!/bin/bash
DateName=`date +%Y_%m_%d`

FILE="/root/sch1416/"$DateName"_ezhednevnoe_menyu.csv"
FILEALT="/root/sch1416/"$DateName"_ezhednevnoe_meniu.csv"

for ((i = 1; i <= 1000; i++)); do
if test -f $FILE
then
	echo "FOUND!"
	cp $FILE /root/sch1416/feedback.csv 
	rm $FILE
	break
elif test -f $FILEALT
	then
		echo "FOUND!"
		cp $FILEALT /root/sch1416/feedback.csv 
		rm $FILEALT
		break
else
	sleep 5
fi
done


