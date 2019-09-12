#!/bin/bash

CURDAY=`date +"%A"`;
Mon=понедельник;
Tue=вторник;
Wed=среда;
Thu=четверг;
Fri=пятница;
Sat=суббота;
Sun=воскресенье;

functionMon () {
TOMMOROW=`TZ=GMT-27 date +%Y-%m-%d`;
TODAY=`TZ=GMT-3 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+69 date '+%Y-%m-%d'`;
}
functionTue () {
TOMMOROW=`TZ=GMT-27 date +%Y-%m-%d`;
TODAY=`TZ=GMT-3 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+21 date +%Y-%m-%d`;
}
functionWed () {
TOMMOROW=`TZ=GMT-27 date +%Y-%m-%d`;
TODAY=`TZ=GMT-3 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+21 date +%Y-%m-%d`;
}
functionThu () {
TOMMOROW=`TZ=GMT-27 date +%Y-%m-%d`;
TODAY=`TZ=GMT-3 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+21 date +%Y-%m-%d`;
}
functionFri () {
TOMMOROW=`TZ=GMT-75 date +%Y-%m-%d`;
TODAY=`TZ=GMT-3 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+21 date +%Y-%m-%d`;
}
functionSat () {
TOMMOROW=`TZ=GMT-51 date +%Y-%m-%d`;
TODAY=`TZ=GMT+21 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+45 date +%Y-%m-%d`;
}
functionSun () {
TOMMOROW=`TZ=GMT-27 date +%Y-%m-%d`;
TODAY=`TZ=GMT+45 date +%Y-%m-%d`;
YESTERDAY=`TZ=GMT+69 date +%Y-%m-%d`;
}

if [ $CURDAY = $Mon ];
    then
        functionMon;
fi
if [ $CURDAY = $Tue ];
    then
        functionTue;
fi
if [ $CURDAY = $Wed ];
    then
        functionWed;
fi
if [ $CURDAY = $Thu ];
    then
        functionThu;
fi
if [ $CURDAY = $Fri ];
    then
        functionFri;
fi
if [ $CURDAY = $Sat ];
    then
        functionSat;
fi
if [ $CURDAY = $Sun ];
    then
        functionSun;
fi

