#!/bin/bash

echo "Welcome to kid calculator"

read -p "Enter 1st Number: " num1
read -p "Enter 2nd Number: " num2

read -p "Enter the operation you want to perform from the following: '+' , '-' , '/' , '*' " op

case "$op" in
    '+')
        echo "The sum will be: $((num1 + num2))"
        ;;
    '-')
        echo "The subtraction will be: $((num1 - num2))"
        ;;
    '/')
        echo "The division will be: $((num1 / num2))"
        ;;
    '*')
        echo "The multiplication will be: $((num1 * num2))"
        ;;
    *)
        echo "Invalid operator"
        ;;
esac
