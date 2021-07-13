#!/bin/bash -l

sum=0               # used for calculating the input values' sum
while read n
do
    if ((n>0))
    then
        ((sum+=n))
    else
        break
    fi
done

echo "sum=${sum}"

# use the command printf, break, if then fi, while do done
i=0
while ((++i)); do
    if ((i>4)); then
        break
    fi
    j=0
    while ((++j))
    do
        if ((j>4))
        then
            break
        fi
        printf "%4d" $((i*j))
    done
    printf "\n"
done


