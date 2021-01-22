#!/usr/bin/bash env
# File: loopsEx.sh

echo "Entering main loop"
for i in {1..3}
do
	for j in hello mello chello
	do
		let k=i+1
		echo $j i=$i k=$k
		while [[ $k -ge 0 ]]
		do
			echo "$k yup..."
			let k=$k-1
		done
	done
done
	
