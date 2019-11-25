#!/bin/bash -l

# this script is used for showing the continue 2 times.
for ((i=1;i<=8;i++))
do
    printf "\n"
    for ((j=1;j<=8;j++))
    do
        if ((i*j==20))
        then
            continue 2                                  # continue 2 times
        fi
        printf "%d*%d=%-4d" $i $j $((i*j))
    done
done
