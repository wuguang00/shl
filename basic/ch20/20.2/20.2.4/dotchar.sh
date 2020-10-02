#!/bin/bash

echo "------------------ cmd 1 ------------------"
sed -n '/.at/p' data6

echo "------------------ cmd 2 ------------------"
sed -n '/[ch]at/p' data6
