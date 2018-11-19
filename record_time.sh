#!/bin/sh

SUM_USER=$(awk '{sum+=$2} END {print sum}' log.txt)
SUM_SYS=$(awk '{sum+=$3} END {print sum}' log.txt)

echo $SUM_USER $SUM_SYS
