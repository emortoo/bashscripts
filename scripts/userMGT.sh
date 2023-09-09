#! /bin/bash 
# This is a user managment script 

# Welcome guest and get user full name 
echo "Welcome to Landmark Eagle Group"
sleep 2 
echo "Enter first and last name"
read firstname lastname

# create a user name 
echo "Welcome  $firstname $lastname" 
echo "Lets create a usename for your account"
sleep 2
echo "Enter your username"
read username
sleep 1 
# Create a username for the user 
sudo adduser -c $firstname_$lastname $username
if (( $$ == 0 ))
then 
	echo "Account created succesfully"
else 
	echo "Sorry there was an error"
fi 
echo "$$"
sleep 2
# Create password 
echo "Lets create a password for your acount"
echo "Create a new password"
sudo passwd $username
sleep 2
echo "Congratulations a new password has been created"
sleep 2
# Assign user to a group 
echo "Lets assign you into a group"
echo "What group do you belong too ?"
echo "Engineers  / Managment  / DevOps / Developer "
read groupname 
sudo usermod -aG $groupname $username 
echo "Thank you $username for creating you user credentials"
echo "Your user information is as follows"
id $username 
