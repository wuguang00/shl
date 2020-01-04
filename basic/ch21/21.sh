#!/bin/bash -v
# Sat Jan  4 15:00:22 2020

# this command has difference function
# sed '/header/{n;d;}' data1.txt

sed '/^$/d' data1.txt
sed -n '/header/n ; d' data1.txt
sed '/header/n ; d' data1.txt
sed '/data/n;d' data1.txt # it doesn't work well with the {}.
# sed '/data/{n;d}' data1.txt # it doesn't work well with the {}.

sed '/data/{ n ; d;}' data1.txt # I tried it, maybe the book give a wrong example, or the usage in Mac in another manner.
sed '/header/{n;d;}' data1.txt

# to seperate the function you should use ; or enter. Do it flexiblly.
sed '/header/{n
d
}' data1.txt

sed '/first/{N; s/\n/ #/ ;}' data2.txt


sed 'N ; s/System.Administrator/Desktop User/' data3.txt # use the function directly. '.' means space and enter.

sed 'N
s/System\nAdministrator/Desktop\nUser/
s/System Administrator/Desktop User/
' data3.txt # use the function directly. Many functions are used

sed 'N
s/System\nAdministrator/Desktop\nUser/
s/System Administrator/Desktop User/
' data4.txt # It has flaw.


sed '
s/System\nAdministrator/Desktop\nUser/
N
s/System Administrator/Desktop User/
' data4.txt # It works well





