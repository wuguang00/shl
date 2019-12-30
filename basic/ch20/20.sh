#!/bin/bash -v
# -v is better manner to show the command you are executing in the script.
# Sat Dec 21 23:44:12 2019
# BER: basic regular expression
# ERE: extended regular expression

echo "This is a test." | sed -n '/test/p'               # Show test matched line.
echo "This is a test." | sed -n '/trial/p'              # no matched item.

# awk should use '' to specify the rules rather than ""

echo "This is a test." | awk '/test/{print $0}'         # Show test matched line.
echo "This is a test." | awk '/trial/{print $0}'        # no matched item.

echo "This is a test." | sed -n '/Test/p'               # no matched item.
echo "This is a test." | sed -n '/this/p'               # no matched item.
echo "This is a test." | sed -n '/This/p'               # matched. Will show the matched line.

echo "The books are expensive." | sed -n '/book/p'      # matched
echo "The books are expensive." | sed -n '/books/p'     # matched

echo "This is line number 1." | sed -n '/ber 1/p'       # matched

echo "This is line number1." | sed -n '/ber 1/p'        # no matched one


sed -n '/  /p' data1                                    # matched the lines with 2 spaces

sed -n '/\$/p' data2

# .*[]${}\+?|() special characters, we should pay special attention to it.
echo "\ is a special character" | sed -n '/\\/p'
# echo "3 / 2" | sed -n '///p'                            # it will show error if you use it like this.
echo "3 / 2" | sed -n '/\//p'                           # it makes sense if you use it like this way.

echo "The book store" | sed -n '/^book/p'               # mismatch
echo "The book store" | sed -n '/^The/p'                # match, the ^ has special meaning.

sed -n '/^this/p' data3

echo "This ^ is a test" | sed -n '/s ^/p'               # ^ is a normal one if you use it like this.


echo "This is a good book" | sed -n '/book$/p'          # matched, the end of the sentence has "book".
echo "This book is good" | sed -n '/book$/p'            # mismatch
echo "There are a lot of good books" | sed -n '/book$/p' #mismatch, must add a space at the end of the line.

sed -n '/^this is a test$/p' data4                      # match one line

sed -n '/^$/p' data5
sed '/^$/d' data5                                       # it will delete empty one

sed -n '/.at/p' data6                                   # . character can contain space.

sed -n '/[ch]at/p' data6
echo "Yes" | sed -n '/[Yy]es/p'
echo "yes" | sed -n '/[Yy]es/p'
echo "Yes" | sed -n '/[Yy][Ee][Ss]/p'
echo "yEs" | sed -n '/[Yy][Ee][Ss]/p'
echo "yeS" | sed -n '/[Yy][Ee][Ss]/p'

sed -n '/[0123]/p' data7

sed -n '/^[0123456789][0123456789][0123456789][0123456789][0123456789]/p' data8
sed -n '/^[0123456789][0123456789][0123456789][0123456789][0123456789]$/p' data8





