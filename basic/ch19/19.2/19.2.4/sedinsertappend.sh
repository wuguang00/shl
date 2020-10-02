#/bin/bash

# A question. In MacOS Catalina
echo "------------------ cmd 1 ------------------"
echo "Test Line 2" | sed 'i\
Test Line 1'

echo "------------------ cmd 2 ------------------"
echo "Test Line 2" | sed 'a\
Test Line 1
'

echo "------------------ cmd 3 ------------------"
echo "Test Line 2" | sed 'a\
Test Line 1
' # You can type the in the command line.

echo "------------------ cmd 4 ------------------"
sed '3i\
This is an inserted line
' data6.txt


echo "------------------ cmd 5 ------------------"
sed '3a\
This is an appended line
' data6.txt

echo "------------------ cmd 6 ------------------"
sed '$a\
This is a new line of text.
' data6.txt

echo "------------------ cmd 7 ------------------"
sed '1i\
This is one line of new text.\
This is another line of new text.
' data6.txt

echo "------------------ cmd 8 ------------------"
sed '1i\
This is one line of new text.\
This is two lines of new text.\
This is three lines of new text.\
This is another line of new text.
' data6.txt


