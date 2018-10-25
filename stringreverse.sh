#!/bin/bash
input_string=$1
reverse_string=""
 
len=${#input_string}
echo "You have entered the String: $input_string"
echo "Length of the string $input_string is: $len"

for (( i=$len-1; i>=0; i-- ))
do 
#	echo "Position of String $i"
	reverse_string="$reverse_string${input_string:$i:1}"
done

echo "Reverse of the string $input_string is $reverse_string"

