#!/bin/bash

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
