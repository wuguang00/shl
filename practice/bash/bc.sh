#!/bin/bash 
# usage of bc: scale used for maintain how many precsions are used.

var1=$(echo "scale=5; 3.00/5" | bc)
echo "The answer is $var1"                                  # after the point it have five numbers.

var1=100
var2=45
var3=$(echo "scale=5; ${var2}/${var1}" | bc)                # get the result calculated bc command.
echo "The answer is $var3"                                  # after the point it have five numbers.

# use EOF to space the related items. It can contain essential expression.
var1=10
var2=40
var3=30
var4=70

# will return a value calculated by bc

var5=$(bc << EOF
scale=4
a1=($var1*$var2)
b1=($var3*$var4)
a1+b1
1+2
EOF
)                                                           # it will show the last value

echo "The final answer for this mess is $var5"

