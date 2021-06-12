#!/bin/bash

rname=$(whoami)
echo "Nice to meet you, $rname"
echo "How many users do you want to add"
read -r
amount=$REPLY
echo "Okay, I will prompt you $amount times"
for ((c=1; c <=amount; c++))
	do
		echo "Enter the name of the user you wish to add: "
		read -r
		name=$REPLY
		adduser $name
		echo "$name has been added"
	done
