#!/bin/bash

#stores the output of command whoami to variable rname
rname=$(whoami)

#greeting and prompting user
echo "Nice to meet you, $rname"
echo "How many users do you want to add"

#taking in input from user
read -r

#storing input in variable amount
amount=$REPLY

#prompting user again
echo "Okay, I will prompt you $amount times"

#specifying the range of for loop, modeled after c syntax
for ((c=1; c <=amount; c++))
	#do what's specified below as many times as specified above
	do
		#body of the loop. Do this "amount" many times
		echo "Enter the name of the user you wish to add: "
		read -r
		name=$REPLY
		#Linux command to add a user
		adduser $name
		#letting user know a user has been added
		echo "$name has been added"
	#loop done now
	done
