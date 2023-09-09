#!/bin/bash
# how to use calculator script 
# sh calculator.sh add 5 3
# sh calculator.sh subtract 10 2
# sh calculator.sh multiply 4 7
# sh calculator.sh divide 8 2


# Check if the number of arguments is correct
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <operation> <num1> <num2>"
    echo "Example: $0 add 5 3"
    exit 1
fi

operation=$1
num1=$2
num2=$3

case $operation in
    add)
        echo "$num1 + $num2 = $(($num1 + $num2))"
        ;;
    subtract)
        echo "$num1 - $num2 = $(($num1 - $num2))"
        ;;
    multiply)
        echo "$num1 * $num2 = $(($num1 * $num2))"
        ;;
    divide)
        # Check for division by zero
        if [ $num2 -eq 0 ]; then
            echo "Error: Division by zero is not allowed!"
            exit 1
        fi
        echo "$num1 / $num2 = $(($num1 / $num2))"
        ;;
    *)
        echo "Error: Unknown operation. Supported operations: add, subtract, multiply, divide"
        exit 1
        ;;
esac
