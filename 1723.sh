#!/bin/bash -l
# coding according to the textbook
# using the echo to return a value

dbl() { # define the function using another format
    read -p "Enter a value: " value
    echo $[ $value * 2 ]
}

result=$(dbl)
echo "The new value is $result"


