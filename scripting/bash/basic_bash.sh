#!/bin/bash

#update the system and input a yes
sudo apt-get update -y

#installs applications msql, apache, and php for a LAMP server
sudo apt-install mysql-server -y
sudo apt-install apache2 -y
sudo apt-install php libapache2-mod-php php-mysql

#creates users
while [x$username = "x"]; do
	read -p "Please enter the username you wish to create : " username
	if id -u $username >/dev/null 2>&1; then
		echo "User already exists"
	username=""
	fi
	done
