#!/bin/bash 
#This is an if and elif statement example 
#Author: Team 17  (EagleTech)  

# welcome statement  
echo "Welcome to digit checker "
sleep 1

# direct user to pass an input between (1-999)
echo "Please enter a number between 1 - 999"
read number
sleep 1
# check if the input argument is a single digit number  
if (( $number < 10 ))
then
    echo "$number is a single digit number"
# check if the input argument is a double digit number
elif (( $number < 100 ))
then
    echo "$number is a double digit number"
# check if the input argument is a triple digit number
elif (( $number < 1000 ))
then 	
    echo "$number is a triple digit number"
else
    echo "sorry $number exceeds triple digit"
fi 
