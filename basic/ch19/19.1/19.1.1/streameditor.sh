#!/bin/bash
# -v: option used for verbosity to show information
# 
# set -v, !/bin/bash -v, set -o verbose,
# set -x, !/bin/bash -x,
# bash -v script.sh, bash -x script -x. have the same effect for print the command you have in the script.

# Many characters can be used for seperation.
echo "------------------ cmd 1 ------------------"
echo "This is a test" | sed 's/test/big test/'  # use / to seperator
echo "This is a test" | sed 's!test!big test!'  # use ! to seperator, it makes you don't need to consider transfer the special characters, such as /
echo "This is a test" | sed 's@test@big test@'  # use @
echo "This is a test" | sed 's#test#big test#'  # use #
echo "/bin/bash/" | sed 's/\/bash\//\/csh\//'   # use /
echo "/bin/bash/" | sed 's!/bash/!/csh/!'       # use !
echo "/bin/bash/" | sed 's@/bash/@/csh/@'       # use @
echo "/bin/bash/" | sed 's#/bash/#/csh/#'       # use #

echo "------------------ cmd 2 ------------------"
sed 's/dog/cat/' data1.txt
echo "------------------ cmd 3 ------------------"
sed 's/brown/green/; s/dog/cat/' data1.txt
echo "------------------ cmd 4 ------------------"
sed -e 's/brown/green/; s/dog/cat/' data1.txt

echo "------------------ cmd 5 ------------------"
sed -e '
s/brown/blue/
s/fox/elephant/
s/dog/cat/' data1.txt

echo "------------------ cmd 6 ------------------"
sed -f script.sed data1.txt





