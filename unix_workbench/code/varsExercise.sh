#!/usr/bin/env bash
#File: varsExample.sh

var_one=5
var_two=8

let var_three=$var_one+$var_two
echo $var_three

var_string="This is the first string."
var_string_two="This is the second string."

echo $var_string $var_string_two
echo ""
echo $var_string
echo $var_string_two
echo ""
echo "Number of arguments: $#"
echo "number of elemnets times first element equals:" 
expr $1 \* $#