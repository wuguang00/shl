#!/bin/bash -v
# Andy Wu
# 2019-12-21 18:43:44, done for seciton 19.1
# set -v, !/bin/bash -v, set -o verbose, set -x !/bin/bash -x, bash -v script.sh, bash -x script -x. have the same effect for print the command you have in the script.

# Many characters can be used for seperation.
echo "This is a test" | sed 's/test/big test/'  # use / to seperator
echo "This is a test" | sed 's!test!big test!'  # use ! to seperator, it makes you don't need to consider transfer the special characters, such as /
echo "This is a test" | sed 's@test@big test@'  # use @ to seperator
echo "This is a test" | sed 's#test#big test#'  # use # to seperator
echo "/bin/bash/" | sed 's/\/bash\//\/csh\//'   # use / to seperator, you must use it like this format to make it work well.
echo "/bin/bash/" | sed 's!/bash/!/csh/!'       # use ! to seperator, it makes you don't need to consider transfer the special characters, such as /
echo "/bin/bash/" | sed 's@/bash/@/csh/@'       # use @ to seperator
echo "/bin/bash/" | sed 's#/bash/#/csh/#'       # use # to seperator

sed 's/dog/cat/' data1.txt
sed 's/brown/green/; s/dog/cat/' data1.txt
sed -e 's/brown/green/; s/dog/cat/' data1.txt   # use -e to explicit to show the command to execute.

sed -e '
s/brown/blue/
s/fox/elephant/
s/dog/cat/' data1.txt                           # It will work for every line. Another format to show the command

sed -f script.sed data1.txt                     # you can use -f to read the rules for sed in a file.


# gawk almost the same as awk, below some usage about gawk
# awk is available in Mac but gawk.

echo "First line." | awk '{print "Hello, world!"}' 
awk '{print "Hello, world!"}' script.sed        # it has three lines, so it will show three times.
# awk '{print "Hello, world!"}' < script.sed      # it has three lines, so it will show three times. Another format to use it.
# awk '{print "Hello, world!"}'                 # If you uncomment this line, it will need you type line one line by one line, until CTRL+C is used.
# you can use them like this.

awk '{print $1}' data2.txt
awk -F: '{print $1}' /etc/passwd                # we can -mr anl -mf in the gawk but awk can't
awk -F : '{print $1}' /etc/passwd
awk -F/ '{print $1}' /etc/passwd
awk -F / '{print $1}' /etc/passwd

echo "My name is Rich" | awk '{$4="Christine"; print $0}'

echo "My name is Rich" | awk '{
$4="Christine"
print $0
print $2}'

awk -F: -f script2.awk  /etc/passwd             # use -f to use the rules in a file.
awk -F: -f script3.awk  /etc/passwd             # use -f to use the rules in a file.

awk 'BEGIN {print "Hello, world!"}'             # print the content unconditional.

awk 'BEGIN {print "The data3 File Contents:"}
{print $0}' data3.txt                           # use the rule in 2 lines

awk 'BEGIN {print "The data3 File Contents:"}
{print $0}
END {print "End of the File"}' data3.txt        # use the rule in 2 lines

awk -f script4.awk /etc/passwd



