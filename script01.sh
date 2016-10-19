#!/bin/bash

DAY=`date | awk '{ print $1" "$3"/"$2"/"$6}'`
HOURS=`date | awk '{ print $4" "$5}'`

USER=`whoami`
GREETIME=`date +"%T" | awk -F : '{ print $1}'`

if [[ "$GREETIME" > 12 ]]
 then GREETING="afternoon"
 else GREETING="morning"
fi

echo "Good $GREETING $USER." 
echo "The day is $DAY and the time is $HOURS"
