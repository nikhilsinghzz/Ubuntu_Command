#!/bin/bash

# Downloading and installing latest teamviewer

sudo apt-get update

rm /tmp/teamviewer_i386.deb

wget https://download.teamviewer.com/download/teamviewer_i386.deb -O /tmp/teamviewer_i386.deb
sudo apt install -y libjpeg62:i386
sudo dpkg -i /tmp/teamviewer_i386.deb

rm /tmp/teamviewer_i386.deb



##########Downloading Postamn #########
cd /tmp || exit
echo "Downloading Postman ..."
wget -q https://dl.pstmn.io/download/latest/linux?arch=64 -O postman.tar.gz
tar -xzf postman.tar.gz
rm postman.tar.gz

echo "Installing to opt..."
if [ -d "/opt/Postman" ];then
    sudo rm -rf /opt/Postman
fi
sudo mv Postman /opt/Postman

echo "Creating symbolic link..."
if [ -L "/usr/bin/postman" ];then
    sudo rm -f /usr/bin/postman
fi
sudo ln -s /opt/Postman/Postman /usr/bin/postman

echo "Installation completed successfully."
echo "You can use Postman!"

##############################################
sudo apt-get update
sudo apt-get install vim -y


### install curl ##
sudo apt-get update
sudo apt-get install vim curl -y


######## Zoom (you can add wget before download links) ######
sudo apt-get update
wget https://zoom.us/client/latest/zoom_amd64.deb   
sudo dpkg -i zoom_2.0.52458.0531_amd64.deb
sudo apt-get -f install



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


###########To install  composer ############ 
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer

################To install Node.js ##################
wget https://nodejs.org/dist/v8.9.4/node-v8.9.4-linux-x64.tar.xz -P /usr/local/
tar -xvf /usr/local/node-v* -C /usr/local/
ln -s /usr/local/node-v*/bin/node /usr/bin/node
ln -s /usr/local/node-v*/bin/npm /usr/bin/npm



