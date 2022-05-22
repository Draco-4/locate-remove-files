#! /bin/bash

read -p "What malicious file type do you want to delete?" ext

find ~ -type f -name "*$ext" > ./malfound.txt

count= wc -l < ./malfound.txt
echo "$count files found."

while IFS= read -r line
do
	echo "$line"
	echo "Do you want to delete this file? y/n"
	read ans </dev/tty

	decision ()
	{
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
			decision
	}
done < ./malfound.txt
