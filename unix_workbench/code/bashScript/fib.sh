#!/usr/bin/bash env
# File: fib.sh

function fib {
	local count=0
	local fibSeq=(0 1)
	local temp=0
	local i=2
	while [[ $count -le $1-3 ]]
	do
	let temp=${fibSeq[$i-2]}+${fibSeq[$i-1]}
	fibSeq+=($temp)
	let count=$count+1
	let i=$i+1
	done
	echo ${fibSeq[*]}
}
