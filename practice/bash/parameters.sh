#!/bin/bash 
# This program show the script name, parameters...
# use this script with parameters or arguments

echo "The script name is ${0}."
echo "The number of parameters: $#."
echo "The number of parameters: $#."

# a useful exprssion used to exit from special case
[ $# -lt 2 ] && echo "The number of parameters is less than 2\. Stop Here." && exit 0


echo "You whole parameters are $@"
echo "You whole parameters are $*"
echo "The codes below show the difference about \$* and \$@"
for n in "$@"
do
    echo "for loop, parameters \"\$@\": $n"
done

for n in "$*"
do
    echo "for loop, parameters \"\$*\": $n"
done

for n in $@
do
    echo "for loop, parameters \$@: $n"
done

for n in $*
do
    echo "for loop, parameters \$*: $n"
done

echo "The first parameter: ${1}"
echo "The second parameter: ${2}"
echo "The third parameter: ${3}"



