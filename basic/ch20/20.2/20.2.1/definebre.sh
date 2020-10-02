#!/bin/bash
# 2020-10-02 23:50:49

echo "------------------ cmd 1 ------------------"
echo "This is a test." | sed -n '/test/p'

echo "------------------ cmd 2 ------------------"
echo "This is a test." | sed -n '/trial/p'

# awk should use '' to specify the rules rather than ""
echo "------------------ cmd 3 ------------------"
echo "This is a test." | awk '/test/{print $0}'

echo "------------------ cmd 4 ------------------"
echo "This is a test." | awk '/trial/{print $0}'

echo "------------------ cmd 5 ------------------"
echo "This is a test." | sed -n '/Test/p'

echo "------------------ cmd 6 ------------------"
echo "This is a test." | sed -n '/this/p'

echo "------------------ cmd 7 ------------------"
echo "This is a test." | sed -n '/This/p'

echo "------------------ cmd 8 ------------------"
echo "The books are expensive." | sed -n '/book/p'

echo "------------------ cmd 9 ------------------"
echo "The books are expensive." | sed -n '/books/p'

echo "------------------ cmd 10 ------------------"
echo "This is line number 1." | sed -n '/ber 1/p'

echo "------------------ cmd 11 ------------------"
echo "This is line number1." | sed -n '/ber 1/p'

echo "------------------ cmd 12 ------------------"
sed -n '/  /p' data1

echo "------------------ cmd 13 ------------------"
sed -n '/\$/p' data2


# .*[]${}\+?|() special characters, we should pay special attention to it.

echo "------------------ cmd 14 ------------------"
echo "\ is a special character" | sed -n '/\\/p'

echo "------------------ cmd 15 ------------------"
echo "3 / 2" | sed -n '/\//p'
