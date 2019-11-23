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

# using comma to seperate each other.
echo $((2+3, 4+5, b=a+10))                              # will print 19 for this line
let sum=2 4 5                                           # let seperate the expression using space
echo ${sum}
let tm=5 all=4                                          # using space to seperate
echo $tm,$all                                           # using comma to seperate
echo $tm $all                                           # using space to seperate
test $sum -eq 2                                         # will show nothing
[ $sum -eq 2 ]                                          # will show nothing
echo $[2+3]                                             # using to calulate expression, only used for integer
echo $[${tm}+${all}]                                    # using to calulate expression, only used for integer





