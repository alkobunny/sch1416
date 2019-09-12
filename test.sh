#!/bin/bash
cd /root/sch1416/scripts

bash /root/sch1416/scripts/feedback.sh
sh /root/sch1416/scripts/mod.sh
sh /root/sch1416/scripts/paidlink.sh
sh /root/sch1416/scripts/schoollink.sh
sh /root/sch1416/scripts/preschoollink.sh

sh /root/sch1416/scripts/downloads.sh

git add -A
message=`TZ=GMT-3 date +%d-%m-%Y`
git commit -m "$message"
git push origin master
