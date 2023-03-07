#!/bin/bash

# Check if the number of arguments is 5
if [ $# -ne 5 ]; then
  echo "Sorry, Please enter 5 numbers from 1 to 40"
else 
	echo "Processing your ticket"
	sleep 2
fi

# Check if all arguments are numbers between 1 and 40
for i in "$@"; do
# for i in "$@"; do
#  if ! [[ "$i" =~ ^[1-9][0-9]?$|^90$ ]]; then
#    echo "Error: $i is not a number between 1 and 90"
#    exit 1
    
  if ! [[ "$i" =~ ^[1-3]?[0-9]$|^40$ && "$i" -ge 1 && "$i" -le 40 ]]; then
#    echo "$i is a valid number between 1 and 40"
# else
    echo "Error: $i is not a number between 1 and 40"
    exit 1
fi

done

# Randomly generate 5 numbers between 1 and 40
lottery_numbers=()
for i in {1..7}; do
  lottery_number=$((RANDOM % 40 + 1))

  echo "Lottery number $i: $lottery_number"
  sleep 2
done

# Check the number of matches
match_count=0
for i in "${lottery_numbers[@]}"; do
  for j in "$@"; do
    if [ "$i" -eq "$j" ]; then
      match_count=$((match_count + 1))
    echo -n "* "
      break
    fi
  done
  echo -n " "
done

echo ""

# Determine the payout based on the number of matches
if [ "$match_count" -eq 2 ]; then
  echo "Congratulations! You have won 2 credits."
elif [ "$match_count" -eq 3 ]; then
  echo "Congratulations! You have won 5 credits."
elif [ "$match_count" -eq 4 ]; then
  echo "Congratulations! You have won 25 credits."
elif [ "$match_count" -eq 5 ]; then
  echo "Congratulations! You have won 100 credits."
else
  echo "Sorry, you did not win any credit please try again."
fi

exit 0
