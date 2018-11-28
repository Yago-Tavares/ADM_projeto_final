#!/bin/sh

if [ $1 ]
then
  MONTH=$1
else
  MONTH=$(date +%m-%Y)
fi

GET_LINES_WITHOUT_ERROR=$(egrep "[0-9]+.[0-9]+ [0-9]+.[0-9]+ [0-9]+.[0-9]+" data/log-$MONTH.log)

SUM_USER=$(echo "$GET_LINES_WITHOUT_ERROR" | awk '{sum+=$2} END {print sum}')
SUM_SYS=$(echo "$GET_LINES_WITHOUT_ERROR" | awk '{sum+=$3} END {print sum}')

echo 'CPU time of sys:' $SUM_SYS
echo 'CPU time of user:' $SUM_USER
