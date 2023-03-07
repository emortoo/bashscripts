#! /bin/bash 
# This script will backup bash scripts files 
# Dev QA Production Test 
# Please specify the enviroment as an argument 
# please specify the server and your details as arguments 
# dbserver1 dbserver2 dbserver3 
# emortoo smortoo rmortoo bmortoo mmortoo 
#
# sh db_backup dev dbserver1 emortoo 

echo "The first argument is $1"
echo "The second argument is $2"
echo "The third argument is $3"
echo "The total argument is $#"
echo "The list of argument is $*"
date 
echo "The status of tthe last run command is $?"
mkdir backup/
cp *.sql backup/  
echo "the process ID is $$" 

