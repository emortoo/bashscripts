#!/bin/bash

echo "while loop starts"
echo "performing load testing for tesla"
l=10000
while [ $l -le 90000 ]
do
echo "Carrying load of "
echo $l
l=`expr $l + 10000 `
done
echo "while loop ends"
