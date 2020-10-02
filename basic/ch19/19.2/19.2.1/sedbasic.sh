#/bin/bash

# Section 1
echo "------------------ cmd 1 ------------------"
sed 's/test/trial1/1' data4.txt

echo "------------------ cmd 2 ------------------"
sed 's/test/trial2/2' data4.txt

echo "------------------ cmd 3 ------------------"
sed 's/test/trial/g' data4.txt

echo "------------------ cmd 4 ------------------"
sed -n 's/test/trial/p' data5.txt

echo "------------------ cmd 5 ------------------"
sed 's/test/trial/w test.txt' data5.txt # write will be the first one.

echo "------------------ cmd 6 ------------------"
sed -n 's/\/bin\/bash/\/bi\/csh/' /etc/passwd

echo "------------------ cmd 7 ------------------"
sed 's#/bin/bash#/bin/csh#' /etc/passwd

echo "------------------ cmd 8 ------------------"
sed 's!/bin/bash!/bin/csh!' /etc/passwd


