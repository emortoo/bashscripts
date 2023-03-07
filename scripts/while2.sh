#!/bin/bash 
#
#This is a while loop 
#
echo "Lets start our while loop here"
sleep 2 

i=100
while [ $i -le 900 ]
do 
	echo "while loop is at $i"
	i=`expr $i + 100`
	sleep 2
done  
echo "While loop ends"

