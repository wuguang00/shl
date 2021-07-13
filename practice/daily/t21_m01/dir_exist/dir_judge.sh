#!/bin/bash 

if ! [ -d build ]
then 
    echo "build directory doesn't exists."
    echo "Now it will be created."
    mkdir build
else
    echo "build directory exists."
fi

if ! [[ -d build ]]
then 
    echo "build directory doesn't exists."
    echo "Now it will be created."
    mkdir build
else
    echo "build directory exists."
fi

echo "Confirmed."
echo "Now the directory exists."


if ! [ -d build/linux2 ]
then 
    echo "build/linux2 directory doesn't exists."
    echo "Now it will be created."
    mkdir build/linux2
else
    echo "build/linux2 directory exists."
fi




if ! [[ -d build/linux2 ]]
then 
    echo "build/linux2 directory doesn't exists."
    echo "Now it will be created."
    mkdir build/linux2
else
    echo "build/linux2 directory exists."
fi


