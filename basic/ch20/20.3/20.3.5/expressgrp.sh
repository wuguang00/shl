#!/bin/bash
# 2020-10-03 01:17:49 

# Use group like this.

echo "------------------ cmd 1 ------------------"
echo "Sat" | awk '/Sat(urday)?/{print $0}'

echo "------------------ cmd 2 ------------------"
echo "Saturday" | awk '/Sat(urday)?/{print $0}'

echo "------------------ cmd 3 ------------------"
echo "cat" | awk '/(c|b)a(b|t)/{print $0}'

echo "------------------ cmd 4 ------------------"
echo "cab" | awk '/(c|b)a(b|t)/{print $0}'

echo "------------------ cmd 5 ------------------"
echo "bat" | awk '/(c|b)a(b|t)/{print $0}'

echo "------------------ cmd 6 ------------------"
echo "bab" | awk '/(c|b)a(b|t)/{print $0}'

echo "------------------ cmd 7 ------------------"
echo "tab" | awk '/(c|b)a(b|t)/{print $0}'

echo "------------------ cmd 8 ------------------"
echo "tac" | awk '/(c|b)a(b|t)/{print $0}'

