#!/bin/bash 
# For example, it is used for induce the file name per sections.
# Chapter 1 to ch01, Chapter E to ch0E, Chapter 11 to ch11.
# It is used just for one time by my own

IFS=$(echo -en "\n\b")                                  # used for the file name can use space in it.
for tdir in $(ls)
do
    if [ -d $tdir -a ${#tdir} -gt 8 ]
    then
        if [ ${tdir:0:7} == "Appendi" ]
        then
            if [ -d "ch0${tdir:0-1}" ]
            then
                echo "ch0E, ch0G have done."
            else
                cp -r $tdir "ch0${tdir:0-1}"
            fi
        elif [ ${#tdir} -eq 9 ]
        then
            if [ -d "ch0${tdir:0-1}" ]
            then
                echo "ch00~ch09 have done."
            else
                cp -r $tdir "ch0${tdir:0-1}"
            fi
        elif [ ${#tdir} -eq 10 ]
        then
            if [ -d "ch${tdir:0-2}" ]
            then
                echo "ch10~ch99 have done."
            else
                cp -r $tdir "ch${tdir:0-2}"
            fi
        else
            echo "Done."
        fi
    fi
done

echo "All Done."


