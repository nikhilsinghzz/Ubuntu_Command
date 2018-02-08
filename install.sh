#/bin/bash



####Skype######
sudo apt update
wget https://go.skype.com/skypeforlinux-64.deb

sudo dpkg -i skypeforlinux-64.deb


#####Slack####
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.0.5-amd64.deb
sudo dpkg -i slack-desktop-3.0.5-amd64.deb



####PhpStorm### 

Install dependencies
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y

Install PhpStorm
wget http://download-cf.jetbrains.com/webide/PhpStorm-2017.1.4.ta‌​r.gz
tar -xvf PhpStorm-2017.1.4.ta‌​r.gz
cd PhpStorm-171.4694.2/bin/
./phpstorm.sh

###### GIT ######

sudo apt-get update
sudo apt-get install git -y

###### Docker #######
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce

sudo apt-get install -y docker-ce
sudo systemctl status docker



##### Docker Composer ####
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version



###### PHP 7.0 #####
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2-cli -y