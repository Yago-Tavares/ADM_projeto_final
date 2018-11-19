#!/bin/sh

while true
do
	read -p ">" entrada
	
	/usr/bin/time -f "%e %U %S %C" -a -o log.txt $entrada	
	#TIME=$(/usr/bin/time -f "%e" $entrada 2>&1 | tail -1)
	#_time="$(time $entrada 2>&1)"
	#$entrada
	#echo $entrada $TIME >> log.txt
done


