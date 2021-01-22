#!/usr/bin/bash env
# File: plier.sh

function plier {
	local list=($@)
	local i=${#list[*]}
	let i=$i-1
	local sum=${list[$i]}
	
	while [[ $i -gt 0 ]]
		do
		let sum=$sum*${list[$i-1]}
		let i=$i-1
		done

	echo $sum
}
