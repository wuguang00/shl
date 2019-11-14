#!/bin/bash -l
# coding according to the textbook
# using the return command in a function


function db1 {
    read -p "Enter a value: " value
    echo "doubling the value.(the value should be less than 128)"
    return $[ $value * 2 ] # use this format
}

db1
echo "The new value is $?"





