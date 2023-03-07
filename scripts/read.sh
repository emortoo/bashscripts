#! bin/bash 
# This script is to authenticate users 
# Author : emortoo

echo "Good morning"
echo "Please enter your name"
read name 
echo "$name, Welcome to TD Bank."
echo "Please enter your pin"
read -s pin # -s is used to pass a secret variable 
echo "You are authenticated."
echo "Thanks for banking with us"
