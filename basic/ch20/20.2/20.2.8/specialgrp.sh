#!/bin/bash

echo "------------------ cmd 1 ------------------"
echo "abc" | sed -n '/[[:digit:]]/p'

echo "------------------ cmd 2 ------------------"
echo "abc" | sed -n '/[[:alpha:]]/p'

echo "------------------ cmd 3 ------------------"
echo "abc123" | sed -n '/[[:digit:]]/p'

echo "------------------ cmd 4 ------------------"
echo "This is, a test." | sed -n '/[[:punct:]]/p'

echo "------------------ cmd 5 ------------------"
echo "This is a test" | sed -n '/[[:punct:]]/p'

