#!/bin/sh

if [ $1 ]
then
  MONTH=$1
else
  MONTH=$(date +%m-%Y)
fi

GET_LINES_WITHOUT_ERROR=$(egrep "[0-9]+.[0-9]+ [0-9]+.[0-9]+ [0-9]+.[0-9]+" data/log-$MONTH.log)


echo 'Histogram of used commands'
echo "$GET_LINES_WITHOUT_ERROR" | awk '{print $4}' | sort -n | uniq -c | awk '{print $2, $1}'
