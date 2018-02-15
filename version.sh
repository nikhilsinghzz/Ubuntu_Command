######Apache Version########
apache2 -v >> version.txt

sleep 2



##### PHP Version ####

php -v >> version.txt

sleep 2


###### os version ###
cat /etc/issue >>version.txt

sleep 2 


##### Freed TDS version ####

tsql -C >>version.txt

sleep 2


##### ssh-server (version) ####

sshd -V >>version.txt

sleep 2


