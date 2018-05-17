#!/bin/bash

#Inside Dev Folder
echo "Inside Main Folder!"  
cd ..
cd Downloads
cd dev

#Inside Pmanager Folder
echo "Inside Pmanager Folder!" 
cd pmanager2

# Removing Pg data from Pmanager
echo "Removing PG-DATA From Pmanager"
sudo rm -rf pgdata
echo "PG-DATA Removed!" 


# Inside sso folder
cd ..
cd ssoserver
echo "Inside ssoserver Folder!" 

# Removing Pg data from SSOSERVER
echo "Removing PG-DATA From ssoserver"
sudo rm -rf pgdata
echo "PG-DATA Removed!" 


# Inside Website folder
cd ..
cd website2
echo "Inside Website2 Folder!" 

# Removing Pg data from WEBSITE
echo "Removing PG-DATA From website"
sudo rm -rf pgdata
echo "PG-DATA Removed!" 






 
