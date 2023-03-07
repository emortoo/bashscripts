#! bin/bash
# This script is to manager users  
# This script requires sudo access 
#

echo "please enter username"
read username
echo "Creating acount for $username"
sudo useradd $username 
echo "lets assign a password for your account"
sudo passwd $username 
id $username 
