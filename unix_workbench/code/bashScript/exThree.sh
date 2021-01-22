#!/usr/bin/bash env
# File: exThree.sh

if [[ $1 =~ [0-9] && $2 =~ [0-9] ]]
then 
	let num=$1+$2
	echo $num
else echo "$1 and $2"
fi
