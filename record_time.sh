#!/bin/sh

if [ $1 ]
then
  MONTH=$1
else
  MONTH=$(date +%m-%Y)
fi

SUM_USER=$(egrep "[0-9]+.[0-9]+ [0-9]+.[0-9]+ [0-9]+.[0-9]+" data/log-$MONTH.log | awk '{sum+=$2} END {print sum}')
SUM_SYS=$(egrep "[0-9]+.[0-9]+ [0-9]+.[0-9]+ [0-9]+.[0-9]+" data/log-$MONTH.log | awk '{sum+=$3} END {print sum}')

echo 'Systime =' $SUM_SYS 'Usertime =' $SUM_USER
echo
echo 'Command used histogram'
egrep "[0-9]+.[0-9]+ [0-9]+.[0-9]+ [0-9]+.[0-9]+" data/log-$MONTH.log | awk '{print $4}' | sort -n | uniq -c | awk '{print $2, $1}'
