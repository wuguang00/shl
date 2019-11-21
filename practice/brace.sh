#!/bin/bash 
# ((exprssion)) (command)

echo $(ls)
echo $((6+3))                                           # used for calulate.
echo $((6-3))
i=5
((i=i*2))                                               # calulate only, use it alone, but not show the result
echo ${i}
((a=1+2**3-4%3))
echo ${a}                                               # will print 8

b=$((1+2**3-4%3))
echo ${b}                                               # will print 8

echo $((1+2**3-4%3))                                    # you can't leave out

echo "four pieces of logic expression"
echo $((3<8))
echo $((3>8))
echo $((3==8))
echo $((3==3))

echo "For ++a and a++, a=10"
a=10
echo $((++a))
echo $a
a=10
echo $((a++))
echo $a

echo "For --a and a--, a=10"
a=10
echo $((--a))
echo $a
a=10
echo $((a--))
echo $a

echo $((2+3, 4+5, b=a+10))                              # will print 19 for this line

