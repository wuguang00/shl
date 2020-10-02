#!/bin/bash

echo "------------------ cmd 1 ------------------"
sed -n '/[^ch]at/p' data6

# section 20.2.7, this is tag for loaction, so you can find it easily on the book.

echo "------------------ cmd 12 ------------------"
sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p' data8

echo "------------------ cmd 13 ------------------"
echo "a8392" | sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p'

echo "------------------ cmd 14 ------------------"
echo "1839a" | sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p'

echo "------------------ cmd 15 ------------------"
echo "18a92" | sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p'

echo "------------------ cmd 16 ------------------"
echo "18192" | sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p'
 
echo "------------------ cmd 17 ------------------"
sed -n '/[c-h]at/p' data6

sed -n '/[a-ch-m]at/p' data6

echo "I'm getting too fat." | sed -n '/[a-ch-m]at/p'
# 
# # special characters group
# echo "abc" | sed -n '/[[:digit:]]/p'
# echo "abc" | sed -n '/[[:alnum:]]/p'
# echo "abc123" | sed -n '/[[:digit:]]/p'
# 
# echo "This is a test" | sed -n '/[[:punct:]]/p'
# echo "This is, a test." | sed -n '/[[:punct:]]/p'
# 
# # section 20.2.9, this is tag for loaction, so you can find it easily on the book.
# 
# echo "ik" | sed -n '/ie*k/p' # e 0 or 1 or more times is OK
# echo "iek" | sed -n '/ie*k/p'
# echo "ieek" | sed -n '/ie*k/p'
# echo "ieeek" | sed -n '/ie*k/p'
# echo "ieeeek" | sed -n '/ie*k/p'
# 
# echo "I'm getting a color TV" | sed -n '/colou*r/p'
# echo "I'm getting a colour TV" | sed -n '/colou*r/p'
# 
# echo "I ate a potatoe with my lunch." | sed -n '/potatoe*/p'
# echo "I ate a potato with my lunch." | sed -n '/potatoe*/p'
# 
# echo "this is a regular pattern expression" | sed -n '/regular.*expression/p'
# 
# echo "bt" | sed -n '/b[ae]*t/p'
# echo "bat" | sed -n '/b[ae]*t/p'
# echo "bet" | sed -n '/b[ae]*t/p'
# echo "btt" | sed -n '/b[ae]*t/p'
# 
# 
# echo "baat" | sed -n '/b[ae]*t/p'
# echo "baat" | sed -n '/b[ge]*t/p'
# echo "baaeeet" | sed -n '/b[ae]*t/p'
# # the combinations of 'a' and 'e' in a random manner.
# echo "baeeaeeet" | sed -n '/b[ae]*t/p'
# 
# echo "bt" | sed -n '/be?t/p' # sed can't use the ERE
# echo "bt" | awk '/be?t/{print $0}' # sed can't use the ERE, but awk can use it normally. ? means 0 or 1 time match
# echo "bet" | awk '/be?t/{print $0}' # sed can't use the ERE, but awk can use it normally.
# echo "beet" | awk '/be?t/{print $0}' # sed can't use the ERE, but awk can use it normally.
# echo "beeet" | awk '/be?t/{print $0}' # sed can't use the ERE, but awk can use it normally.
# 
# echo "bt" | awk '/b[ae]?t/{print $0}'
# echo "bat" | awk '/b[ae]?t/{print $0}'
# echo "bot" | awk '/b[ae]?t/{print $0}'
# echo "baet" | awk '/b[ae]?t/{print $0}'
# echo "beat" | awk '/b[ae]?t/{print $0}'
# 
# # below regrular exprssion has difference.
# echo "beat" | awk '/b[ae]?t/{print $0}'
# echo "bat" | awk '/b[ae]?t/{print $0}'
# echo "bet" | awk '/b[ae]?t/{print $0}'
# echo "baeeaeeet" | sed -n '/b[ae]*t/p'
# 
# # section 20.3.2 + plus means apear at least one time
# echo "beeet" | awk '/be+t/{print $0}'
# echo "beet" | awk '/be+t/{print $0}'
# echo "bet" | awk '/be+t/{print $0}'
# echo "bt" | awk '/be+t/{print $0}'
# 
# echo "bt" | awk '/b[ae]+t/{print $0}'
# echo "bat" | awk '/b[ae]+t/{print $0}'
# echo "bet" | awk '/b[ae]+t/{print $0}'
# echo "beat" | awk '/b[ae]+t/{print $0}'
# echo "beet" | awk '/b[ae]+t/{print $0}'
# echo "beeat" | awk '/b[ae]+t/{print $0}'
# 
# # [ae]*: 0, 1, n, combinations [ae]?: only one can appear at most 1 time, on combination is allowed. [ae]+: 0, 1, n, combinations
# # interval {}
# 
# echo "bt" | awk --re-interval '/be{1}t/{print $0}'
# echo "bet" | awk --re-interval '/be{1}t/{print $0}'
# echo "bet" | awk --re-interval '/be{1}t/{print $0}'
# echo "beet" | awk --re-interval '/be{1}t/{print $0}'
# echo "beet" | awk --re-interval '/be{2}t/{print $0}'
# 
# echo "bt" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
# echo "bet" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
# echo "beet" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
# echo "beeet" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
# 
# echo "bt" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "bat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "bet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "baet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "beat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "beet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "baat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "beeat" | awk --re-interval '/b[ae]{1,2}t/{print $0}' # can't combine
# echo "baeet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "baeaet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "beeaat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# 
# # in sed
# # [ae]*: 0, 1, n, combinations
# # [ae]+: 0, 1, n, combinations, no combination is allowed.
# # [ae]?: only one can appear at most 1 time, no combination is allowed.
# 
# # in awk Extended regular expression
# # [ae]{1,2}: only 1 or 2 items are allowed. Yes, I got it.
# echo "beeaat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
# echo "beeaat" | awk --re-interval '/b[ae]{1,4}t/{print $0}'
# 
# # | means or
# echo "The cat is asleep" | awk '/cat|dog/{print $0}'
# echo "The dog is asleep" | awk '/cat|dog/{print $0}'
# echo "The sleep is asleep" | awk '/cat|dog/{print $0}'
# echo "He has a hat" | awk '/[ch]at|dog/{print $0}'
# 
# # section 20.3.5
# echo "Sat" | awk '/Sat(urday)?/{print $0}'
# echo "Saturday" | awk '/Sat(urday)?/{print $0}'
# 
# echo "cat" | awk '/(c|b)a(b|t)/{print $0}'
# echo "cab" | awk '/(c|b)a(b|t)/{print $0}'
# echo "bat" | awk '/(c|b)a(b|t)/{print $0}'
# echo "bab" | awk '/(c|b)a(b|t)/{print $0}'
# echo "tab" | awk '/(c|b)a(b|t)/{print $0}'
# echo "tac" | awk '/(c|b)a(b|t)/{print $0}'
# 
# # section 20.4
# echo $PATH
# echo $PATH | sed 's/:/ /g'
# mypath=$(echo $PATH | sed 's/:/ /g')
# for directory in $mypath
# do
#     num=$[$num+1] # a simple way to calculate 
# done
# echo $num
# 
# ./countfiles.sh
# echo "317-555-1234" | ./isphone.sh
# echo "000-555-1234" | ./isphone.sh
# echo "300 555-1234" | ./isphone.sh
# cat phonelist | ./isphone.sh
# 
# echo "rich@here.now" | ./ismail.sh
# echo "rich@here.now." | ./ismail.sh
# echo "rich@here-now" | ./ismail.sh
# echo "rich.blum@here.now" | ./ismail.sh
# echo "rich_blum@here.now" | ./ismail.sh
# echo "rich/blum@here.now" | ./ismail.sh
# echo "rich#blum@here.now" | ./ismail.sh
# echo "rich*blum@here.now" | ./ismail.sh
# echo "rich+blum@here.now" | ./ismail.sh # this line matches the pattern
# 
