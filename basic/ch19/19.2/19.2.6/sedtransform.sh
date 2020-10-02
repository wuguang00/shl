#/bin/bash

# A question. In MacOS Catalina
echo "------------------ cmd 1 ------------------"
sed 'y/123/789/' data8.txt

echo "------------------ cmd 2 ------------------"
sed 'y/123/789/' data8.txt

echo "------------------ cmd 3 ------------------"
echo "This 1 is a test of 1 try." | sed 'y/123/456/'

