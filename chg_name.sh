#!/bin/bash 
# For example, it is used for induce the file name per sections.
# Chapter 1 to ch01, Chapter E to ch0E, Chapter 11 to ch11.
# It is used just for special requirement.

count=0
IFS=$(echo -en "\n\b")                                  # used for the file name can use space in it.
for dir_a in $(ls)
do
    # echo "${dir_a} in ls                              #count"
    # coun=$(( $count + 1 ))
    # echo "the length of directory: ${#dir_a}"
    # echo "${dir_a:0:7}"
    if [ -d $dir_a -a ${#dir_a} -gt 8 ]
    then
        if [ ${dir_a:0:7} == "Appendi" ]
        then
            if [ -d "ch0${dir_a:0-1}" ]
            then
                echo "ch0E, ch0G have done."
            else
                cp -r $dir_a "ch0${dir_a:0-1}"
            fi
        elif [ ${#dir_a} -eq 9 ]
        then
            if [ -d "ch0${dir_a:0-1}" ]
            then
                echo "ch00~ch09 have done."
            else
                cp -r $dir_a "ch0${dir_a:0-1}"
            fi
        elif [ ${#dir_a} -eq 10 ]
        then
            if [ -d "ch${dir_a:0-2}" ]
            then
                echo "ch10~ch99 have done."
            else
                cp -r $dir_a "ch${dir_a:0-2}"
            fi
        else
            echo "Done."
        fi
    fi
done

echo "All have done. Thank you very much."


