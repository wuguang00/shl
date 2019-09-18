#!/bin/bash -l
# sed -i used for modify the file directly. Add a file as stdin

sed 's/\&\&/||/g'                                                       # replace && with ||, & must be transformed.
sed -i 's/\&\&/ || /g' ./awkusage.sh                                    # it shows the basical usage, it won't work, if it doesn't match.
echo "This is a test. test." | sed 's/test/big test/'                   # It replaces the first one.
echo "This is a test. test." | sed 's/test/big test/g'                  # It replaces the global line of the.

sed 's/boy/boys/g' ./data_test.txt
sed -e 's/boy/boys/g; s/like/love/g' ./data_test.txt
sed -e '
s/boy/boys/g
s/like/love/g
s/cute/clever/g
' ./data_test.txt

echo "sed -f script file, test for this format."
sed -f script1.sed ./data_test.txt

sed 's/test/trial/' ./data4.txt
sed 's/test/trial/1' ./data4.txt                                        # the same effect as before.
sed 's/test/trial/2' ./data4.txt                                        # the second matched items will be replaced.
sed 's/test/trial/g' ./data4.txt
echo "sed -n 's/test/trial/p' ./data4.txt"
sed -n 's/test/trial/p' ./data4.txt
echo "sed 's/test/trial/w test.txt' ./data4.txt"
sed 's/test/trial/w test.txt' ./data4.txt

echo "Used for the known text"
sed 's/\/bin\/bash/\/bin\/csh/' /etc/passwd                             # only one line matched.
sed -n 's/\/bin\/bash/\/bin\/csh/p' /etc/passwd                         # only one line matched.
sed -n 's!/bin/bash!/bin/csh!p' /etc/passwd                             # only one line matched. the same effect as before.

sed -e '2,3s/boy/boys/g; 4,5s/like/love/g' ./data_test.txt

sed '/root/s/sh/bash/' /etc/passwd                                      # only one line matched.
echo "/pattern/command, the filter for some patter for text."
echo "sed -n '/root/s/sh/bash/p' /etc/passwd # only one line matched."
sed -n '/root/s/sh/bash/p' /etc/passwd                                  # only one line matched.

sed -e '7{
s/boy/boys/g
s/like/love/g
s/cute/clever/g
}' ./data_test.txt                                                       # only for line 7

sed -e '4d' ./data_test.txt                                              # only for line 4
sed -e '7d' ./data_test.txt                                              # only for line 7
sed -e '4,$d' ./data_test.txt                                            # for line 4 ~ end
sed '4d' ./data_test.txt                                                 # only for line 4
sed '7d' ./data_test.txt                                                 # only for line 7
sed '4,$d' ./data_test.txt                                               # for line 4 ~ end

sed '/line 1/d' ./data_test.txt                                          # only for line 1
echo "sed '/line 1/,/line 4/d' ./data_test.txt"                          # display what command.
sed '/line 1/,/line 4/d' ./data_test.txt                                 # only for line 1~4

sed '/line 1/,/line 2/!d' ./data_test.txt                                # for line 5 ~ end, the outside of 1~4
sed '/line 6/,/line 7/!d' ./data_test.txt                                # for line 5 ~ end, the outside of 1~4, useful command, I am finding it.

echo "Test Line 2" | sed 'a\
Test Line 1'
echo "Again: "
echo "Test Line 2" | sed 'i\
    Test Line 1'

echo "Test Line 2" | sed ''                                             # Just for test
echo "Test Line 2" | sed ''
echo "Test Line 2" | sed ''
echo "Test Line 2" | sed ''

sed '7a\
Test Line 8.\
' ./data_test.txt

sed '7i\
Test Line 7.\
' ./data_test.txt

echo ""
sed '$a\
Test Line 8\
' ./data_test.txt
echo ""

sed '1i\
Test Line 1, new.\
Test line 2, new.\
' ./data_test.txt


sed '3c\
Test Line 3, new.\
' ./data_test.txt

sed '/line 6/c\
This is an new line 6\
' ./data_test.txt # pattern matching.

sed '/line/c\
This is an new line 6\
' ./data_test.txt # pattern matching.

sed '2,3c\
This is an new line 6\
' ./data_test.txt # pattern matching.

sed 'y/123/789/' ./data_test.txt # pattern matching.

echo "This is 1 is a test of 1 try." | sed 'y/1/9/'

echo "this is a test." | sed 'p'
sed -n '/line 7/p' ./data_test.txt
sed -n '5,7p' ./data_test.txt

echo ""
sed -n '/3/{
p
s/line/test/p
}' ./data_test.txt

sed '=' ./data_test.txt

echo ""
sed -n '/3/{
=
p
}' ./data_test.txt

echo "$"
sed '1,2w test_w.txt' ./data_test.txt
echo "\$1"
sed -n '1,2w test_w.txt' ./data_test.txt
sed -n '/line/w test_w1.txt' ./data_test.txt



