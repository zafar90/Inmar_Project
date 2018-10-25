#!/bin/bash

condmindate=$(date -d "Apr 27, 2015 8:27:17" +"%Y%m%d")
condmaxdate=$(date -d "Apr 30, 2015 8:27:17" +"%Y%m%d")
echo $condmindate $condmaxdate
	while read line; do    
    		dateval=$(echo $line | awk -F'|' '{ print $1 }')
    		loglevel=$(echo $line | awk -F'|' '{ print $2 }')
    		desc=$(echo $line | awk -F'|' '{ print $3 }')   		
    		parsedate=$(date -d "$dateval" +"%Y%m%d")    		
    		if [[ $parsedate -ge $condmindate ]] && [[ $parsedate -le $condmaxdate ]]; then	    		
           		loglevelsevere=$(echo "$loglevel" | grep Severe)	   		
	   		if [[ ${#loglevelsevere} != 0 ]]; then
	   			echo "Name Of Log  Actual Log" >> Log.txt
				echo "$fname  $parsedate $loglevel $desc" >>Log.txt
 	   		fi
    		fi 
	done < app.log

