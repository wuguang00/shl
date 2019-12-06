#!/bin/bash -l
# this function contains a function used to strop each lines

function str_strop() {
    filename=$1
    while read runt
    do
        str1=${runt#*total (}
        str2=${str1%s*}
        echo ${str2}
    done < ${filename} # read lines from a file.
} 

str_strop test1.txt # it use the test1.txt

