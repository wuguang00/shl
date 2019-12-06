#!/bin/bash -l
# Input: a directory contains log can be used to get the data. Then got the distribution of the data
# For example, data of five lines 3\n 4\n 5\n 3\n 8\n -- then 3: 40%, 4: 20%, 5: 20% 8: %20

rgrfile=$1

# use the last six characters as the temporary name.

if [ -f ${rgrfile:0-6}.txt ] # delete exit to make sure get a new one every time execute this script.
then
    rm -f ${rgrfile:0-6}
fi

for cases in $(ls ${rgrfile})
do
    if [ -f "${rgrfile}/${cases}/xrun.log" -a ${cases0:10} == "randomcase" -a ${cases:0-3} == "x16" ]
    then
        sed -n '/total (/p' "${rgrfile}/${cases}/xrun.log" > 
    fi
done

sed -i '' 's/.*total (//g' ${rgrfile:0-6}.txt
# modify the essential data.
sed -i '' 's/s, .*//g' ${rgrfile:0-6}.txt

awk '
BEGIN {
    print "Hello, start now."
}
{
    arr[NR] = $1;
}
END {
    for (k in arr)
        if (arr[k] < 100)
            a[0]++;
        else if (arr[k] < 200)
            a[1]++;
        else if (arr[k] < 300)
            a[2]++;
        else if (arr[k] < 400)
            a[3]++;
        else if (arr[k] < 500)
            a[4]++;
        else if (arr[k] < 600)
            a[5]++;
        else
            a[6]++;
}' ${rgrfile:0-6}.txt


