#/bin/bash

# 1: use numbers to address
echo "------------------ cmd 1 ------------------"
sed '2s/dog/cat/' data1.txt

echo "------------------ cmd 2 ------------------"
sed '2s/dog/cat/1' data1.txt

echo "------------------ cmd 3 ------------------"
sed '2,3s/dog/cat/1' data1.txt

echo "------------------ cmd 4 ------------------"
sed '2,$s/dog/cat/1' data1.txt

# 2: filter with the text
echo "------------------ cmd 5 ------------------"
sed -n '/root/s/bin/bigbin/p' /etc/passwd

echo "------------------ cmd 6 ------------------"
sed '/root/s/bin/bigbin/' /etc/passwd

# 3: conbination for command used in sed.
echo "------------------ cmd 7 ------------------"
sed '2{
s/fox/elephant/
s/dog/cat/
}' data1.txt

echo "------------------ cmd 8 ------------------"
sed '3,${
s/brown/green/
s/lazzy/active/
}' data1.txt







