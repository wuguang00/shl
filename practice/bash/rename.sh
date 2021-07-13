#!/bin/bash
# mv Chapter02 to ch02, Chapter03 to ch03, ......

for dir_temp in $(ls)
do 
    if [ -d $dir_temp -a -d "ch${dir_temp}" ]
    then
        echo "Done"
    elif [ -d $dir_temp ]
    then
        mv $dir_temp "ch${dir_temp:0-2}"
    else
        echo "Done."
    fi
done


