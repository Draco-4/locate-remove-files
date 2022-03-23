#! /bin/bash

echo "What malicious file type do you want to delete?"
read ext

find . -type f -name "*$ext" > ./Desktop/Tasks/malfound.txt

count= wc -l < ./Desktop/Tasks/malfound.txt
echo "$count files found."

while IFS= read -r line
do
	echo "$line"
	echo "Do you want to delete this file? y/n"
	read ans </dev/tty

	if [ "${ans,,}" == y ]
	then
		rm -v $line
		echo "-------------------------------------------------->"
	elif [ "${ans,,}" == n ]
	then
		echo "-------------------------------------------------->"
		continue
	else
		echo "-------------------------------------------------->"
		echo "Invalid reply, Please answer y/n"
		read ans </dev/tty
	fi

done < Desktop/Tasks/malfound.txt
