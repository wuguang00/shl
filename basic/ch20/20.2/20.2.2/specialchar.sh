#!/bin/bash
# 2020-10-03 00:06:57

# .*[]${}\+?|() special characters, we should pay special attention to it.

echo "------------------ cmd 1 ------------------"
sed -n '/\$/p' data2

echo "------------------ cmd 2 ------------------"
echo "\ is a special character" | sed -n '/\\/p'

echo "------------------ cmd 3 ------------------"
echo "3 / 2" | sed -n '/\//p'

echo "------------------ cmd 3 ------------------"

# Below usage is uncorrect.
# x : echo "3 / 2" | sed -n '///p'
