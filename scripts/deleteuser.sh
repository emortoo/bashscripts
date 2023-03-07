#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 username" >&2
  exit 1
fi

username=$1

if [ "$(id -u $username)" == "" ]; then
  echo "Error: User $username does not exist." >&2
  exit 1
fi

sudo userdel $username
sudo rm -rf /home/$username

echo "User $username and their home directory have been successfully deleted."

