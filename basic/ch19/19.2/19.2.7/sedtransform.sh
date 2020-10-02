#/bin/bash

# 1: print lines
echo "------------------ cmd 1 ------------------"
echo "this is  a test" | sed 'p'

echo "------------------ cmd 2 ------------------"
sed -n '/number 3/p' data6.txt

echo "------------------ cmd 3 ------------------"
sed -n '2,3p' data6.txt

echo "------------------ cmd 4 ------------------"
sed -n '/3/{
p
s/line/test/p
}' data6.txt

# 2: print line number
cat data1.txt
echo "------------------ cmd 5 ------------------"
sed '=' data1.txt

echo "------------------ cmd 6 ------------------"
sed -n '/number 4/{
=
p
}' data6.txt

echo "------------------ cmd 7 ------------------"
sed -n 'l' data9.txt


echo "------------------ cmd 8 ------------------"
sed -n 'l' data10.txt
