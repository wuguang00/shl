#!/bin/bash
# 2020-10-03 23:54:27

echo "------------------ cmd 1 ------------------"
echo "rich@here.now" | ./ismail.sh

echo "------------------ cmd 2 ------------------"
echo "rich@here.now." | ./ismail.sh

echo "------------------ cmd 3 ------------------"
echo "rich@here-now" | ./ismail.sh

echo "------------------ cmd 4 ------------------"
echo "rich.blum@here.now" | ./ismail.sh

echo "------------------ cmd 5 ------------------"
echo "rich_blum@here.now" | ./ismail.sh

echo "------------------ cmd 6 ------------------"
echo "rich/blum@here.now" | ./ismail.sh

echo "------------------ cmd 7 ------------------"
echo "rich#blum@here.now" | ./ismail.sh

echo "------------------ cmd 8 ------------------"
echo "rich*blum@here.now" | ./ismail.sh

echo "------------------ cmd 9 ------------------"
echo "rich+blum@here.now" | ./ismail.sh

