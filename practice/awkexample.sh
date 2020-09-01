#!/bin/bash -l
# I recite it from my notebook and it just used in my daily work. It hasn't been test in current platform
gawk '
BEGIN {sum=0};
{if (NR==1) print $1, $2; if (NR>1) arr[$3]++;}
END{for (k in arr) sum+=arr[k]; for (k in arr) if(arr[k]/sum > 0.1) print "k: "k,"Occupied percentage: "100*arr[k]/sum"%"}
' a.txt     # use many rules for one file

awk '/wuguang/{print $1}' ./test0.txt           # for matched items, print the first part of the line
awk -F "SG|ODR|QDR" '/wuguang/{print $1; cur=$3; count=0; t=0;}' ./test0.txt # use keywords to space the current line, and print the first part and set some variable.
# below command used to calculate the rate of command.
history | awk '{CMD[$2]++; count++;} END { for (a in CMD) print CMD[a] " " CMD[a]/count*100"% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n24
