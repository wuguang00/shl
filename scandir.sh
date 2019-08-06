#!/bin/bash -l
function scandir()
{
    local curdir, workdir, dirnum # maybe useful
    for dir in $(ls ./) ; do
        if test -d ${dir}
        then
            scandir
        else
            echo "We can handle this file"
        fi
    done
}

# use the metod of iteration








