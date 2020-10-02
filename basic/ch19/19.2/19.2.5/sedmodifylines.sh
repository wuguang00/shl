#/bin/bash

# A question. In MacOS Catalina
echo "------------------ cmd 1 ------------------"
sed '3c\
This is a changed line of text.
' data6.txt

echo "------------------ cmd 2 ------------------"
sed '/number 3/c\
This is a changed line of text.
' data6.txt

echo "------------------ cmd 3 ------------------"
sed '/number 1/c\
This is a changed line of text.
' data8.txt

echo "------------------ cmd 4 ------------------"
sed '2,3c\
This is a changed line of text.
' data8.txt

echo "------------------ cmd 5 ------------------"
sed '2,$c\
This is a changed line of text.
' data8.txt
