#!/bin/bash

# Define the variables
username=$1
groupname=$2
 


# Check that two arguments have been passed

if [ $# -ne 2 ]; then 
  	echo "Usage : $0 username group-name" 
	exit 1 
fi

# Create the user
sudo useradd $username

# Set a password for the user
sudo passwd $username

# create user group 
sudo groupadd -f $groupname 

# Add the user to the specified group
sudo usermod -a -G $groupname $username

# Display the list of arguments passed
echo "Arguments passed: $*"

# Display the total number of arguments
echo "Total number of arguments: $#"

# Display the total number of arguments
echo ": $?"

# Display evidence of the created username and group the user belongs to
echo "Username: $username"
echo "Group: $(id -ng $username)"

