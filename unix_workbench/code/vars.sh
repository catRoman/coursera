#!/usr/bin/env bash
#File: vars.sh

chapter_number=5
echo "Chapter Number: $chapter_number"
echo ""
let chapter_number=$chapter_number+5
echo "new number: $chapter_number"
echo ""
maya_status="Gassy"
test_var="test"
echo "Mayas status: " $maya_status
let maya_status="sleeping"
echo "------test Line: " $maya_status 
echo "How are you feeling today: $1"
echo "how do you think school will go: $2"
echo ""
echo "total number of arguments: $#"
echo "arguments: $@"
echo ""
java_total_lines=$(wc -l RemovePackage.java | grep --color R "java_total_Lines")
echo "total lines in java file: $java_total_lines"
var1=$(ls > var1.txt)
echo "printing to file var1"
echo "first 5 line test: $(head -n 5 var1.txt)"
var2=$(tail -n 5 var1.txt)
echo "test2: $var2"

