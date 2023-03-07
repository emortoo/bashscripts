#! /bin/bash

digits () {
if [ $1 -gt 9  ] 
then
  	 echo "Single digit number"
else 
	 echo "double digit number"
fi 
}

subtraction () {
        result=$((x - y))
   echo "The difference of $x and $y is $result"
}

subtraction 
