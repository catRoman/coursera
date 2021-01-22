#!/usr/bin/bash env
# File: arrayExTwo.sh

arrayOne=(house cricket sun moon)
arrayTwo=(dog cat monkey)

let sum=${#arrayOne[*]}+${#arrayTwo[*]}
echo $sum
