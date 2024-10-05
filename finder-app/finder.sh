#!/bin/sh
if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
	if [ -d $filesdir ]
	then
		x=`grep -r -w -c "$searchstr" $filesdir | wc -l`
		y=`grep -r -l "$searchstr" $filesdir | wc -l`
		z=`grep -r -w -c "$searchstr" $filesdir | grep -Eo '[0-9]' | awk '{s+=$1} END {print s}'`
		echo The number of files are $x and the number of matching lines are $y
		return 0
	else
		echo Please specify valid filesdir
		return 1
	fi
else
	echo Please Specify only filesdir AND searchstr
	return 1
fi


