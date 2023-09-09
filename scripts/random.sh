#!/bin/bash


# Generate a random number between 1 and 40
random_munbers=()
echo "Generating first random numbers"
for a in {1..5}; do 
random_number=$((1 + RANDOM % 40))
echo "Random number $a is $random_number"
done 

# Generate second phase of random numbers
echo "Generating Second randomo number"  
for (( i=1;i<=5;i++ )); do
random_number=$((1 + RANDOM % 40))
echo "Random number $i :$random_number"
sleep 1
done
 

