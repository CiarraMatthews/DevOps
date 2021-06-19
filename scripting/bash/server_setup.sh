#!/bin/sh

sudo apt-get update -y

sudo apt-get install apache2 -y
sudo apt-get install mysql-server -y
sudo apt-get install nmap  -y
sudo apt-get install docker.io -y

#install mongodb
#public key
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
#sudo apt-get install gnupg
vi /etc/apt/sources.list.d/mongodb-org-4.4.
sudo apt-get update
sudo apt-get install -y mongodb-org
