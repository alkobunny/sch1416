#!/bin/bash

source /root/sch1416/token.txt
source date.sh

TOKEN=$value

rm -rf /root/sch1416/menu
rm feedback.csv

bash scripts/feedback.sh
bash scripts/mod.sh
bash scripts/paidlink.sh
bash scripts/schoollink.sh
bash scripts/preschoollink.sh
bash scripts/downloads.sh

git add -A
git commit -m `date +"%A"`
git push origin master

bash tokenUpdate.sh

#Дошкольное
LINK1=https://github.com/alkobunny/sch1416/tree/master/menu/preschool$TOMMOROW.pdf;
LINK2=https://github.com/alkobunny/sch1416/tree/master/menu/preschool$TODAY.pdf;
LINK3=https://github.com/alkobunny/sch1416/tree/master/menu/preschool$YESTERDAY.pdf;
#Школьное
LINK4=https://github.com/alkobunny/sch1416/tree/master/menu/school$TOMMOROW.pdf;
LINK5=https://github.com/alkobunny/sch1416/tree/master/menu/school$TODAY.pdf;
LINK6=https://github.com/alkobunny/sch1416/tree/master/menu/school$YESTERDAY.pdf;
#Платное
LINK7=https://github.com/alkobunny/sch1416/tree/master/menu/paid$TOMMOROW.pdf;
LINK8=https://github.com/alkobunny/sch1416/tree/master/menu/paid$TODAY.pdf;
LINK9=https://github.com/alkobunny/sch1416/tree/master/menu/paid$YESTERDAY.pdf;

curl 'https://sch1416sv.mskobr.ru/form/pageDesc/250' \
-H 'Connection: keep-alive' \
-H 'Cache-Control: max-age=0' \
-H 'Origin: https://sch1416sv.mskobr.ru' \
-H 'Upgrade-Insecure-Requests: 1' \
-H 'Content-Type: application/x-www-form-urlencoded' \
-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' \
-H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' \
-H 'Referer: https://sch1416sv.mskobr.ru/form/pageDesc/250' \
-H 'Accept-Encoding: gzip, deflate, br' \
-H 'Accept-Language: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7' \
-H 'Cookie: _ym_uid=1538641573292661664; _ym_d=1538641573; _ga=GA1.2.1171135874.1538641574; PHPSESSID=nhok862o5mmqggis2ljis3bbt5' \
--data 'form%5Bdescription%5D=<div class="toggle"><h3 class="toggle-heading"><span style="font-size:18px;"><span style="color:#0000CD;">Дошкольное отделение</span></span></h3><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$TOMMOROW': </span><a href="'$LINK1'" style="font-size: 18px;" target="_blank">Смотреть</a></div><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$TODAY': </span><a href="'$LINK2'" style="font-size: 18px;" target="_blank">Смотреть</a></div><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$YESTERDAY': </span><a href="'$LINK3'" style="font-size: 18px;" target="_blank">Смотреть</a></div></div><div class="toggle"><h3 class="toggle-heading"><span style="font-size:18px;"><span style="color:#0000CD;">Школьное отделение</span></span></h3><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$TOMMOROW': </span><a href="'$LINK4'" style="font-size: 18px;" target="_blank">Смотреть</a></div><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$TODAY': </span><a href="'$LINK5'" style="font-size: 18px;" target="_blank">Смотреть</a></div><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$YESTERDAY': </span><a href="'$LINK6'" style="font-size: 18px;" target="_blank">Смотреть</a></div></div><div class="toggle"><h3 class="toggle-heading"><span style="font-size:18px;"><span style="color:#0000CD;">Платное меню</span></span></h3><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$TOMMOROW': </span><a href="'$LINK7'" style="font-size: 18px;" target="_blank">Смотреть</a></div><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$TODAY': </span><a href="'$LINK8'" style="font-size: 18px;" target="_blank">Смотреть</a></div><div class="toggle-content" style="display: none;"><span style="color: rgb(0, 0, 255); font-size: 18px;">Меню на '$YESTERDAY': </span><a href="'$LINK9'" style="font-size: 18px;" target="_blank">Смотреть</a></div></div>&form%5B_token%5D='$TOKEN'&save=%D0%A1%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D1%8C' \
--compressed

rm token.txt

