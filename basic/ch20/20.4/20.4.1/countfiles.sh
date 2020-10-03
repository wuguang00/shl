#!/bin/bash -l
# 2020-10-03 20:25:55

echo "------------------ cmd 1 ------------------"
echo $PATH

echo "------------------ cmd 2 ------------------"
echo $PATH | sed 's/:/ /g'

echo "------------------ cmd 3 ------------------"
mypath=$(echo $PATH | sed 's/:/ /g')

echo "------------------ cmd 4 ------------------"

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


