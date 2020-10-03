#!/bin/bash
# 2020-10-03 01:17:49 

# | means or, in awk, or gawk

echo "------------------ cmd 1 ------------------"
echo "The cat is asleep" | awk '/cat|dog/{print $0}'

echo "------------------ cmd 2 ------------------"
echo "The dog is asleep" | awk '/cat|dog/{print $0}'

echo "------------------ cmd 3 ------------------"
echo "The sleep is asleep" | awk '/cat|dog/{print $0}'

echo "------------------ cmd 4 ------------------"
echo "He has a hat" | awk '/[ch]at|dog/{print $0}'

echo "------------------ cmd 5 ------------------"
echo "He has a dog" | awk '/[ch]at|dog/{print $0}'

echo "------------------ cmd 6 ------------------"
echo "He has a dog" | awk '/[ch]at\|dog/{print $0}'

# | special char
