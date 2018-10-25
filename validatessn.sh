#!/bin/bash
ssn=(1236-45-6789 786#45-6789 342-45-6789 5ab-987-6789 345-44-6789)

for i in "${ssn[@]}"
do

	check=$(echo $i | grep '[0-9]\{3\}-\{0,1\}[0-9]\{2\}-\{0,1\}[0-9]\{4\}')
	if [[ $check ]]; then
		echo "Correct SSN $i. "
	else 
		echo "Wrong SSN $i. " 
	fi
done

