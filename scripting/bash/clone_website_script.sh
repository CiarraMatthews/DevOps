#!/bin/sh

sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt install apache2 -y
sudo apt install nodejs -y
sudo apt install npm php -y

sudo npm install -g grunt-cli
sudo chown -R www-data:www-data /var/www
systemctl restart apache2
cd /etc/apache2/sites-enabled/
git clone https://github.com/gamecook/phaser-project-template.git
mv phaser-project-template/ /var/www/html

