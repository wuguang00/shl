#!/bin/bash -l
# Andy Wu from Shanghai
# used for each file and directory in assigned directory

function foreachdir()
{
    local curdir workdir        # maybe useful, the variable should be split by space only, local variable
    workdir=$1
    cd ${workdir}

    if [ ${workdir} == '/' ]
    then
        curdir=""
    else
        curdir=$(pwd)
    fi

    for dir in $(ls ${curdir})
    do
        if test -d ${dir}
        then
            echo "#Directory:       ${dir}"
            cd ${dir}
            foreachdir ${curdir}/${dir}
            cd ..
        else
            echo "*File:            ${dir}"
            echo ${curdir}/${dir}
        fi
    done
}


if test -d $1
then
    foreachdir $1
elif test -f $1
then
    echo "This shell should be used for directory."
    exit 1
else
    echo "This shell should be added one parameters in the format directory."
    exit 1
fi

