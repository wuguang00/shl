#!/bin/bash -l
# Sat Jan  4 13:10:34 2020
mypath=$(echo $PATH | sed 's/:/ /g')
count=0
for directory in $mypath
do
    check=$(ls $directory) # $() get the return value of a command. May be ls get nothing if no files below this hierarchy.
    for item in $check
    do
        count=$[$count+1]   # $[] get the simple calculation of an expression
    done
    echo "$directory: $count"
    count=0
done



