#!/bin/bash
# 2020-10-03 01:17:49 
# Must use: --re-interval

# in sed
# [ae]*: 0, 1, n, combinations
# [ae]+: 0, 1 form the region choose one, no combination is allowed.
# [ae]?: only one can appear at most 1 time, no combination is allowed.

echo "------------------ cmd 1 ------------------"
echo "bt" | awk --re-interval '/be{1}t/{print $0}'

echo "------------------ cmd 2 ------------------"
echo "bet" | awk --re-interval '/be{1}t/{print $0}'

echo "------------------ cmd 3 ------------------"
echo "bet" | awk --re-interval '/be{1}t/{print $0}'

echo "------------------ cmd 4 ------------------"
echo "beet" | awk --re-interval '/be{1}t/{print $0}'

echo "------------------ cmd 5 ------------------"
echo "beet" | awk --re-interval '/be{2}t/{print $0}'

echo "------------------ cmd 6 ------------------"
echo "bt" | awk --re-interval '/be{1,2}t/{print $0}'

echo "------------------ cmd 7 ------------------"
echo "bet" | awk --re-interval '/be{1,2}t/{print $0}'

echo "------------------ cmd 8 ------------------"
echo "beet" | awk --re-interval '/be{1,2}t/{print $0}'

echo "------------------ cmd 9 ------------------"
echo "beeet" | awk --re-interval '/be{1,2}t/{print $0}'

echo "------------------ cmd 10 ------------------"
echo "bt" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 11 ------------------"
echo "bat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 12 ------------------"
echo "bet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 13 ------------------"
echo "baet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 14 ------------------"
echo "beat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 15 ------------------"
echo "beet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 16 ------------------"
echo "baat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 17 ------------------"
echo "beeat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 18 ------------------"
echo "baeet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 19 ------------------"
echo "baeaet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 20 ------------------"
echo "beeaat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

echo "------------------ cmd 21 ------------------"
echo "beeaat" | awk --re-interval '/b[ae]{1,4}t/{print $0}'

echo "------------------ cmd 22 ------------------"
echo "baeaet" | awk --re-interval '/b[ae]{1,4}t/{print $0}'

