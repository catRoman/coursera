#!/usr/bin/bash env
# File: neves.sh

function nevens {

	local count=0
	for var in "$@"
	do
		if [[ $(isiteven var) -eq 1 ]]
		then
		let count=$count+1 
		fi
	done
	echo "$count"
}
