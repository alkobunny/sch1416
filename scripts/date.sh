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
TOMMOROW=`TZ=GMT-27 date +%d-%m-%Y`;
TODAY=`TZ=GMT-3 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+69 date '+%d-%m-%Y'`;
}
functionTue () {
TOMMOROW=`TZ=GMT-27 date +%d-%m-%Y`;
TODAY=`TZ=GMT-3 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+21 date +%d-%m-%Y`;
}
functionWed () {
TOMMOROW=`TZ=GMT-27 date +%d-%m-%Y`;
TODAY=`TZ=GMT-3 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+21 date +%d-%m-%Y`;
}
functionThu () {
TOMMOROW=`TZ=GMT-27 date +%d-%m-%Y`;
TODAY=`TZ=GMT-3 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+21 date +%d-%m-%Y`;
}
functionFri () {
TOMMOROW=`TZ=GMT-75 date +%d-%m-%Y`;
TODAY=`TZ=GMT-3 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+21 date +%d-%m-%Y`;
}
functionSat () {
TOMMOROW=`TZ=GMT-51 date +%d-%m-%Y`;
TODAY=`TZ=GMT+21 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+45 date +%d-%m-%Y`;
}
functionSun () {
TOMMOROW=`TZ=GMT-27 date +%d-%m-%Y`;
TODAY=`TZ=GMT+45 date +%d-%m-%Y`;
YESTERDAY=`TZ=GMT+69 date +%d-%m-%Y`;
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

