#!/bin/bash

source /root/sch1416/scripts/date.sh
source /root/sch1416/linkTOMMOROW.txt
source /root/sch1416/linkTODAY.txt
source /root/sch1416/linkYESTERDAY.txt


#Дошкольное
LINK1=$linkTOMMOROWpreschool
LINK2=$linkTODAYpreschool
LINK3=$linkYESTERDAYpreschool
#Школьное
LINK4=$linkTOMMOROWschool
LINK5=$linkTODAYschool
LINK6=$linkYESTERDAYschool
#Платное
LINK7=$linkTOMMOROWpaid
LINK8=$linkTODAYpaid
LINK9=$linkYESTERDAYpaid

mkdir /root/sch1416/menu;
cd /root/sch1416/menu;

wget -q --no-check-certificate --keep-session-cookies --save-cookies ya_cookies.txt --load-cookies ya_cookies.txt "https://passport.yandex.ru/passport?mode=auth" --referer="https://mail.yandex.ru/" --post-data="login=potashnik@sch1416.ru&passwd=rcEma8do" -O cook.txt; 
rm cook.txt;

wget -q --load-cookies ya_cookies.txt "$LINK1" -O preschool$TOMMOROW.pdf; 
wget -q --load-cookies ya_cookies.txt "$LINK2" -O preschool$TODAY.pdf; 
wget -q --load-cookies ya_cookies.txt "$LINK3" -O preschool$YESTERDAY.pdf; 


wget -q --load-cookies ya_cookies.txt "$LINK4" -O school$TOMMOROW.pdf; 
wget -q --load-cookies ya_cookies.txt "$LINK5" -O school$TODAY.pdf; 
wget -q --load-cookies ya_cookies.txt "$LINK6" -O school$YESTERDAY.pdf; 


wget -q --load-cookies ya_cookies.txt "$LINK7" -O paid$TOMMOROW.pdf; 
wget -q --load-cookies ya_cookies.txt "$LINK8" -O paid$TODAY.pdf; 
wget -q --load-cookies ya_cookies.txt "$LINK9" -O paid$YESTERDAY.pdf; 

rm ya_cookies.txt

cd /root/sch1416

rm linkTODAY.txt
rm linkTOMMOROW.txt
rm linkYESTERDAY.txt


