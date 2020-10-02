#!/bin/bash

echo "------------------ cmd 1 ------------------"
echo "ik" | sed -n '/ie*k/p'

echo "------------------ cmd 2 ------------------"
echo "iek" | sed -n '/ie*k/p'

echo "------------------ cmd 3 ------------------"
echo "ieek" | sed -n '/ie*k/p'

echo "------------------ cmd 4 ------------------"
echo "ieeek" | sed -n '/ie*k/p'

echo "------------------ cmd 5 ------------------"
echo "ieeeek" | sed -n '/ie*k/p'

echo "------------------ cmd 6 ------------------"
echo "I'm getting a color TV" | sed -n '/colou*r/p'

echo "------------------ cmd 7 ------------------"
echo "I'm getting a colour TV" | sed -n '/colou*r/p'

echo "------------------ cmd 8 ------------------"
echo "I ate a potatoe with my lunch." | sed -n '/potatoe*/p'

echo "------------------ cmd 9 ------------------"
echo "I ate a potato with my lunch." | sed -n '/potatoe*/p'

echo "------------------ cmd 10 ------------------"
echo "this is a regular pattern expression" | sed -n '/regular.*expression/p'

echo "------------------ cmd 11 ------------------"
echo "bt" | sed -n '/b[ae]*t/p'

echo "------------------ cmd 12 ------------------"
echo "bat" | sed -n '/b[ae]*t/p'

echo "------------------ cmd 13 ------------------"
echo "bet" | sed -n '/b[ae]*t/p'

echo "------------------ cmd 14 ------------------"
echo "btt" | sed -n '/b[ae]*t/p'

echo "------------------ cmd 15 ------------------"
echo "baat" | sed -n '/b[ae]*t/p'

echo "------------------ cmd 16 ------------------"
echo "baat" | sed -n '/b[ge]*t/p'

echo "------------------ cmd 17 ------------------"
echo "baaeeet" | sed -n '/b[ae]*t/p'

echo "------------------ cmd 18 ------------------"
echo "baeeaeeet" | sed -n '/b[ae]*t/p'
