#!/bin/bash


touch text{1..5}.txt
printf "\n"
for file in `find . -maxdepth 1 -type f -name \*.txt | cut --complement -c1,2 | grep ^text`


do
	newfile="$(date | tr ' ' '->')-$file"
	mv "$file" "$newfile"
	curr_date="$(date)"
	echo "$file --->>> $newfile" | tee -a Assignment.log
	rm -r $newfile
	printf "\n"
done


