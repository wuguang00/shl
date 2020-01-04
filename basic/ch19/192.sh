#!/bin/bash -v
# Andy Wu
# 2019-12-21 20:18:48, done for seciton 19.2
# set -v, !/bin/bash -v, set -o verbose, set -x !/bin/bash -x, bash -v script.sh, bash -x script -x. have the same effect for print the command you have in the script.

sed 's/test/trial/' data4.txt               # default is the first place matched.
sed 's#test#trial#' data4.txt
sed 's@test@trial@' data4.txt
sed 's!test!trial!' data4.txt

sed 's/test/trial/2' data4.txt              # you can set to replace the second matched item.
sed 's#test#trial#2' data4.txt
sed 's@test@trial@2' data4.txt
sed 's!test!trial!2' data4.txt

sed 's/test/trial/g' data4.txt              # you can set to replace all matched item use g.
sed 's#test#trial#g' data4.txt
sed 's@test@trial@g' data4.txt
sed 's!test!trial!g' data4.txt

sed -n 's/test/trial/p' data5.txt           # only matched items can be printed. -n option will stop print the output in a silent way.
sed -n 's/test/trial/w temp.txt' data5.txt
cat temp.txt

echo "/bin/bash/" | sed 's/\/bin\/bash\//\/bin\/csh\//g'          # to show the seperator characters again
echo "/bin/bash/" | sed 's#/bin/bash/#/bin/csh/#g'
echo "/bin/bash/" | sed 's@/bin/bash/@/bin/csh/@g'
echo "/bin/bash/" | sed 's!/bin/bash/!/bin/csh/!g'

# line addressing 2,4s, 2,$s,   /pattern/command

sed '2s/dog/cat/' data1.txt
sed '2,3s/dog/cat/' data1.txt
sed '2, 3s/dog/cat/' data1.txt
sed '2,$s/dog/cat/' data1.txt

grep root /etc/passwd

sed -n '/root/s/false/true/p' /etc/passwd

sed '2{
s/fox/elephant/
s/dog/cat/
}' data1.txt                                # use {} and Enter to seperate

sed '3,${
s/brown/green/
s/lazy/active/
}' data1.txt

sed 'd' data1.txt                           # will show nothing, but the origin file is fine without modification.
cat data6.txt
sed '3d' data6.txt
sed '3,$d' data6.txt
sed '/number 1/d' data6.txt
sed '/number 4/d' data6.txt

sed '/1/,/4/d' data6.txt                    # start from the first matched item and end at the second matched pattern
sed '/2/,/4/d' data6.txt                    # start from the first matched item and end at the second matched pattern


sed '/1/,/3/d' data7.txt                    # start from the first matched item and end at the second matched pattern, start the pattern again.
sed '/2/,/6/d' data7.txt                    # start from the first matched item and end at the second matched pattern, it will start and can't terminate without matched items


# insert and append i a
# usage: sed '[address]command\
# new line'

echo "Test Line 2" | sed 'i\
Test Line 1'                                # you must Enter for using this kind of command.

echo "Test Line 2" | sed 'a\
Test Line 1'                                # you must Enter for using this kind of command.



sed 'i\
    This is an inserted line.' data6.txt
sed '3i\
    This is an inserted line.' data6.txt
sed '3a\
    This is an appended line.' data6.txt
sed '$a\
    This is a new line of text.' data6.txt
sed '1i\
    This is one line of new text.\
    This is another line of new text.' data6.txt

sed '3c\
    This is a changed line of text.' data6.txt     # using line addressing.

sed '/number 4/c\
    This is a changed line of text.' data6.txt     # using pattern to match

sed '/number 1/c\
    This is a changed line of text.' data7.txt     # using pattern to match, the whole file if have the matched one.

sed '2,4c\
    This is a changed line of text.' data7.txt     # line 2~4 will be replaced by this new line.

# transform: [address]y/inchars/outchars/ inchars match outchars one by one, the number must be same.

sed 'y/123/789/' data8.txt
echo "This 1 is a test of 1 try." | sed 'y/123/456/' # they match the whole line globaly.


# For print.
echo "this is a test" | sed 'p'

sed -n '/number 3/p' data6.txt
sed '/number 3/p' data6.txt                         # line 3 show twice
sed -n '2,3p' data6.txt
sed -n '/3/{
p
s/line/test/p
}' data6.txt                                        # print twice for the command

sed '=' data1.txt                                   # show line number with the = used.

sed -n '/number 4/{
=
p
}' data6.txt

sed -n 'l' data9.txt
sed -n 'l' data10.txt

# use sed to handle file.
# usage: [address]w filename
sed '1,2w test.txt' data6.txt

sed '/Browncoat/w Browncoat.txt' data11.txt         # the matched line will be write to the file.
# read from a file
# usage: [address]r file
sed '/Browncoat/w Browncoat.txt' data11.txt         # the matched line will be write to the file.
sed '3r data12.txt' data6.txt                       # the 3 is useful for data6.txt, and the data12.txt will be read and insert to data6.txt
sed '$r data12.txt' data6.txt                       # the $ is used for data6.txt, and the data12.txt will be read and insert to data6.txt

sed '/LIST/{
r data11.txt
d
}' notice.std                                       # read a file and delete exist line.


