#!/bin/sh

MONTH=$(date +%m-%Y)

while true
do
	{
	read -p ">" entrada
	
	/usr/bin/time -f "%e %U %S %C" -a -o ./data/log-$MONTH.log $entrada	
	} || {
	 echo "Bugou"
	}
done


