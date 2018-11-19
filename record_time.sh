#!/bin/sh

MONTH=$(date +%m-%Y)
SUM_USER=$(awk '{sum+=$2} END {print sum}' log-$MONTH.txt)
SUM_SYS=$(awk '{sum+=$3} END {print sum}' log-$MONTH.txt)

echo $SUM_USER $SUM_SYS
