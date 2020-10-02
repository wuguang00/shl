#/bin/bash

# 1: Write to a file
echo "------------------ cmd 1 ------------------"
sed '1,2w test.txt' ./data6.txt

echo "------------------ cmd 2 ------------------"
sed '/Browncoat/w Browncoat.txt' data11.txt

# 2: Read data from file.
echo "------------------ cmd 3 ------------------"
sed '3r data12.txt' data6.txt

echo "------------------ cmd 4 ------------------"
sed '/number 2/r data12.txt' data6.txt

echo "------------------ cmd 5 ------------------"
sed '$r data12.txt' data6.txt

echo "------------------ cmd 6 ------------------"
sed '$r data12.txt' data6.txt

echo "------------------ cmd 7 ------------------"
sed '/LIST/{
r data11.txt
d
}' notice.std

