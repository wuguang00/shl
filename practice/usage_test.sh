#!/bin/bash
# used to test: test [] and [[ ]], = or == are all OK, but == is recommanded
# test: ./test_usage.sh a

if [ $1 = "a" ]
then 
    echo "a1"
fi

if [ $1 == "a" ]
then 
    echo "a2"
fi

if [[ $1 = "a" ]]
then 
    echo "a3"
fi

if [[ $1 == "a" || $1 == "b" ]] # it can be used like this.
then 
    echo "a3"
fi


