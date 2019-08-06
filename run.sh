#!/bin/bash -l
echo "running ""$0"
echo "used for running regression when the number of bjobs less than 100, running 6 pieces of regression at most"
for ((i=0; i<144; i++))
do
    sum=`bjobs | wc -l` # bjobs is used for LSF, workstation
    if test ${sum} -gt 3
    then
        sum=`expr ${sum} - 1` # used for adjustment, maybe should remove.
    fi
    echo ${wi:=0} # the default is 0
    if [ ${sum} -lt 100 ]
    then
        wi=`expr ${wi} + 1` # used for wait
        if [ ${wi} -lt 6 ]
        then
            echo "Running regression in this line"
            sleep 1
        fi
        sleep 1 # check every minute.
    fi
done


