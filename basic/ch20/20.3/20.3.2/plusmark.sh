#!/bin/bash
# 2020-10-03 01:17:49 

echo "------------------ cmd 1 ------------------"
echo "beeet" | awk '/be+t/{print $0}'

echo "------------------ cmd 2 ------------------"
echo "beet" | awk '/be+t/{print $0}'

echo "------------------ cmd 3 ------------------"
echo "bet" | awk '/be+t/{print $0}'

echo "------------------ cmd 4 ------------------"
echo "bt" | awk '/be+t/{print $0}'

echo "------------------ cmd 5 ------------------"
echo "bt" | awk '/b[ae]+t/{print $0}'

echo "------------------ cmd 6 ------------------"
echo "bat" | awk '/b[ae]+t/{print $0}'

echo "------------------ cmd 7 ------------------"
echo "bet" | awk '/b[ae]+t/{print $0}'

echo "------------------ cmd 8 ------------------"
echo "beat" | awk '/b[ae]+t/{print $0}'

echo "------------------ cmd 9 ------------------"
echo "beet" | awk '/b[ae]+t/{print $0}'

echo "------------------ cmd 10 ------------------"
echo "beeat" | awk '/b[ae]+t/{print $0}'
