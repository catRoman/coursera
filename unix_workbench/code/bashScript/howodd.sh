#!/usr/bin/bash env
# File: howodd.sh

function howodd {

	local even=0
	local oddCount=$(nevens $@)
	let evenCount=$#-$oddCount
	echo 'scale=2;'"$oddCount / $evenCount" | bc -l
	
}
