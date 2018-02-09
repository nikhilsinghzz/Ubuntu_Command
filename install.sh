#!/bin/bash

### install curl ##
sudo apt-get update
sudo apt-get install vim curl -y


####Skype######
echo "installing sype"
sudo apt update
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb


#####Slack####
echo " installng slack "
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.0.5-amd64.deb
sudo dpkg -i slack-desktop-3.0.5-amd64.deb

####PhpStorm### 

Install dependencies
isudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y

sudo snap install phpstorm --classic


###### Docker #######
sudo apt-get -f install -y
echo " installing docker"
sudo apt-get install curl -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce

sudo apt-get install -y docker-ce



##### Docker Composer ####
echo " installing docker compose "
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



####### PHP 7.2 #####
echo " installing php7.2"
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.2-cli -y

####Installing Sublime #####
echo " installing sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


######install firefox #####

sudo apt-add-repository ppa:ubuntu-mozilla-daily/ppa -y
sudo apt-get update

sudo apt-get install firefox


