#!/bin/bash

# gawk almost the same as awk, below some usage about gawk
# awk is available in Mac, but gawk not available.

# Section 2
echo "------------------ cmd 1 ------------------"
echo "First line." | awk '{print "Hello, world!";}' 

echo "------------------ cmd 2 ------------------"
awk '{print "Hello, world!"}' ./data1.txt

echo "------------------ cmd 3 ------------------"
awk '{print "Hello, world!"; print "Hello, world$";}' ./data1.txt

echo "------------------ cmd 4 ------------------"
awk '{print "Hello, world!";}' ./data1.txt

# Sectiont 3

echo "------------------ cmd 5 ------------------"
awk '{print $1}' data2.txt
echo "------------------ cmd 6 ------------------"
awk -F: '{print $1}' /etc/passwd
# echo "------------------ cmd 7 ------------------"
# awk -F: '{print $1;}' /etc/passwd
# echo "------------------ cmd 8 ------------------"
# awk -F : '{print $1}' /etc/passwd
# echo "------------------ cmd 9 ------------------"
# awk -F/ '{print $1}' /etc/passwd
# echo "------------------ cmd 9 ------------------"
# awk -F* '{print $1;}' /etc/passwd

# Section 4
echo "------------------ cmd 10 ------------------"
echo "My name is Rich." | awk '{$4="Christine"; print $0}'

echo "------------------ cmd 11 ------------------"
echo "My name is Rich" | awk '{ $4="Christine";
print $0;
print $2
}'

# Section 5
echo "------------------ cmd 12 ------------------"
awk -F: -f script2.awk  /etc/passwd

echo "------------------ cmd 13 ------------------"
awk -F: -f script3.awk  /etc/passwd

# Section 6
echo "------------------ cmd 14 ------------------"
awk 'BEGIN {print "Hello, world!"}'

echo "------------------ cmd 15 ------------------"
awk 'BEGIN {print "The data3 File Contents:"}
{print $0}' data3.txt

echo "------------------ cmd 16 ------------------"
awk 'BEGIN {print "The data3 File Contents:"}
{print $0}
END {print "End of the File"}' data3.txt
# Section 7
echo "------------------ cmd 17 ------------------"
awk -f script4.awk /etc/passwd

