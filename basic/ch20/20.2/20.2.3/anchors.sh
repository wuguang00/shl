#!/bin/bash

# 1: ^ at the start of each line, it is an anchors.

echo "------------------ cmd 1 ------------------"
echo "The book store" | sed -n '/^book/p'

echo "------------------ cmd 2 ------------------"
echo "The book store" | sed -n '/^The/p'

echo "------------------ cmd 3 ------------------"
sed -n '/this/p' data3

echo "------------------ cmd 4 ------------------"
sed -n '/^this/p' data3

# 1: ^ Not at the start of each line, the 
echo "------------------ cmd 5 ------------------"
echo "This ^ is a test" | sed -n '/s ^/p'

# 2: $, at the end of a line

echo "------------------ cmd 6 ------------------"
echo "This is a good book" | sed -n '/book$/p'

echo "------------------ cmd 7 ------------------"
echo "This book is good" | sed -n '/book$/p'

echo "------------------ cmd 8 ------------------"
echo "There are a lot of good books" | sed -n '/book$/p'

# 3: combination for anchors point.
echo "------------------ cmd 9 ------------------"
sed -n '/^this is a test$/p' data4

echo "------------------ cmd 10 ------------------"
sed -n '/^$/p' data5

echo "------------------ cmd 11 ------------------"
sed '/^$/d' data5
