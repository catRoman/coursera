#!/usr/bin/env bash
# File: conditionals.sh

echo "Enter number one"
read numOne
echo "Enter number two"
read numTwo
echo "Enter number three"
read numThree
echo "Enter a string:"
read stringOne
echo "Enter another string:"
read stringTwo

echo "-gt -> " && [[ $numOne -gt $numTwo ]] && echo "numOne is greater" || echo "numTwo is greater"
echo "-ge -> " && [[ $numOne -ge $numThree ]] && echo " numone is greater than or equal numThree" || echo "numThree is greater than or equal to numOne"
echo "-eq -> " && [[ $numOne -eq $numThree ]] && echo "numOn = numThree" || echo "numOne != numThree"
echo "-ne -> " && [[ $numOne -ne $numTwo ]] && echo "num one is != numTwo" || echo "numOne = numTwo" 
echo "-le -> " && [[ $numThree -le $numOne ]] && echo "numThree is less than numOne" || echo "numThree is not less than numOne"
echo "-e -> " && [[ -e numOne ]] && echo "numOne exists" || echo "numOn does not exist"
echo "-e -> " && [[ -e stringOne ]] && echo "StringOne exists" || echo "stringOne doesnt exist"
echo "-e -> " && [[ -e letsread.sh ]] && echo "letsread.sh exists" || echo "letsread.sh does not exist"
echo "-d -> " && [[ -e testDir ]] && echo "testDir directory exists" || echo "testDir directory does not exist"
echo "-z -> " && [[ -z $stringOne ]] && echo " $stringOne length is zero"
echo "-n -> " && [[ -n $stringTwo ]] && echo " $stringTwo length is not zero"
echo "=~ => " && [[ $stringOne =~ [aeiou] ]] && echo " $stringOne contains vowels" || echo "$stringOne doesnt contain vowels"
echo "= -> " && [[ $stringOne = $stringTwo ]] && echo "stringOne equals StringTwo" || echo "stringOne doesnot equal string two "
