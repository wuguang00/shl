#/bin/bash

echo "------------------ cmd 1 ------------------"
sed 'd' data1.txt # Delete every line.

echo "------------------ cmd 2 ------------------"
sed 'd' data1.txt

echo "------------------ cmd 3 ------------------"
sed '2,3d' data6.txt

echo "------------------ cmd 4 ------------------"
sed '3,$d' data6.txt

echo "------------------ cmd 5 ------------------"
sed '/number 1/d' data6.txt

echo "------------------ cmd 6 ------------------"
sed '/1/,/3/d' data6.txt

echo "------------------ cmd 7 ------------------"
sed '/1/,/3/d' data7.txt

echo "------------------ cmd 8 ------------------"
sed '/1/,/5/d' data7.txt

echo "------------------ cmd 9 ------------------"
sed '/1/,/3/d' data8.txt # Start pattern, end pattern of the Delete command.


