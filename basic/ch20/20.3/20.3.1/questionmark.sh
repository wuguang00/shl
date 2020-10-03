#!/bin/bash -v
# 2020-10-03 01:16:55

echo "------------------ cmd 1 ------------------"
echo "bt" | sed -n '/be?t/p'

echo "------------------ cmd 2 ------------------"
echo "bt" | awk '/be?t/{print $0}'

echo "------------------ cmd 3 ------------------"
echo "bet" | awk '/be?t/{print $0}'

echo "------------------ cmd 4 ------------------"
echo "beet" | awk '/be?t/{print $0}'

echo "------------------ cmd 5 ------------------"
echo "beeet" | awk '/be?t/{print $0}'

echo "------------------ cmd 6 ------------------"
echo "bt" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 7 ------------------"
echo "bat" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 8 ------------------"
echo "bot" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 9 ------------------"
echo "baet" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 10 ------------------"
echo "beat" | awk '/b[ae]?t/{print $0}'


echo "------------------ cmd 11 ------------------"
echo "beat" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 12 ------------------"
echo "bat" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 13 ------------------"
echo "bet" | awk '/b[ae]?t/{print $0}'

echo "------------------ cmd 14 ------------------"
echo "baeeaeeet" | sed -n '/b[ae]*t/p'
