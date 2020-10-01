#!/bin/bash
# -v : means verbosity, you can push at the first line.
# 2020-10-01 16:17:36 

# this command has difference function
# right one in Mac: sed '/header/{n;d;}' data1.txt
# Can't work on Mac: sed '/header/{n;d}' data1.txt
# It will show: extra characters at the end of d command, just need add ; at the d command
# to seperate the function you should use ; or enter. Do it flexiblly.

echo "------------------ cmd 1 ------------------"
sed '/^$/d' data1.txt

echo "------------------ cmd 2 ------------------"
sed '/header/n;d' data1.txt

echo "------------------ cmd 3 ------------------"
sed '/data/n;d' data1.txt

echo "------------------ cmd 4 ------------------"
sed '/data/{n;d;}' data1.txt

echo "------------------ cmd 5 ------------------"
sed '/data/{ n ; d;}' data1.txt

echo "------------------ cmd 6 ------------------"
sed '/header/{n;d;}' data1.txt
 
echo "------------------ cmd 7 ------------------"
sed '/header/{n
d
}' data1.txt

echo "------------------ cmd 8 ------------------"
sed '/first/{N; s/\n/ /;}' data2.txt

echo "------------------ cmd 9 ------------------"
sed 'N;s/System.Administrator/Desktop User/' data3.txt

echo '------------------ cmd 10 ------------------'
sed 'N
s/System\nAdministrator/Desktop\nUser/
s/System Administrator/Desktop User/
' data3.txt

echo '------------------ cmd 11 ------------------'
sed 'N;s/System\nAdministrator/Desktop User/;s/System Administrator/Desktop User/' data3.txt

echo '------------------ cmd 12 ------------------'
sed 'N
s/System\nAdministrator/Desktop\nUser/
s/System Administrator/Desktop User/
' data4.txt # It has flaw.

echo '------------------ cmd 13 ------------------' # Adjust the sequence of the commands
sed '
s/System Administrator/Desktop User/
N
s#System\nAdministrator#Desktop\
User#
' data4.txt # It works well

# 2020-10-01 16:57:46 
# In MacOs Catalina. \n doesn't works well




