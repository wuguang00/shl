#!/bin/bash -l
echo "running ""$0"
echo "used for running regression when the number of bjobs less than 100, running 6 pieces of regression at most, try to launch regression every hour."
export pjname=$1
if [ ${pjname} == "0807" ] # used for check basic information to lauch the regression, avoid launch unintennally.
then
    for ((i=0; i<28; i++))
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
            for dir in $(ls ./)
            do
                if test -d ${dir}
                then
                    str="regression/$dir;$str" # used for expand the needed string for other scenario
                else
                    echo "Nothing to merge"
                fi
            done
            if [ ${wi} -lt 6 ]
            then
                echo "Running regression in this line"
                sleep 1
            else
                break # if wi >=6, then break the for loop.
            fi
            sleep 1 # check every minute.
        fi
    done
fi

    

