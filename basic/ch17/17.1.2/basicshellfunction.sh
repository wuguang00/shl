#!/bin/bash -l

# 2 formats to define a function:
# Format 1:
# function name {
#     commands
# }
# 
# Format 1:
# name() {
#     commands
# }

# case 1
function func1 {
    echo "This is an example of a function."
}

count=1
while [ $count -le 5 ]
do
    func1
    count=$[ $count + 1 ] # increase one loop by one loop
done

echo "This is the end of the loop."

func1

echo "Now this is the end of the script."

# case 2
function func1 {
    echo "This is an example of a function."
}

count=1
while [ $count -le 5 ]
do
    func1
    count=$[ $count + 1 ] # increase one loop by one loop
done

echo "This is the end of the loop."

# func2 # will show command not found

echo "Now this is the end of the script again."

function fun2 {
    echo "This is an example of a funtion."
} # the definition should be previously before you use.

# case 3
function func1 {
    echo "This is the first definition of the function name."
}

func1

function func1 {
    echo "This is a repeat of the same function name."
    echo "The repeated one will override the exist one."
}

func1
echo "This is the end of the script. line 57."


