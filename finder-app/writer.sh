#!/bin/sh
if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
	dir=`dirname $writefile`
	`mkdir -p $dir`
	if [ $? -eq 0 ]
	then
		`touch $writefile`
		echo "$writestr" > $writefile
	else
		echo mkdir failed
		return 1
	fi	
else
	echo Please specify file path and write string
	return 1
fi
