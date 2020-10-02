#!/bin/bash
# 2020-10-03 01:17:49 

echo "------------------ cmd 1 ------------------"
echo "beeet" | awk '/be+t/{print $0}'

echo "------------------ cmd 2 ------------------"
echo "beet" | awk '/be+t/{print $0}'

echo "------------------ cmd 17 ------------------"
echo "bet" | awk '/be+t/{print $0}'

echo "------------------ cmd 18 ------------------"
echo "bt" | awk '/be+t/{print $0}'

echo "------------------ cmd 19 ------------------"
echo "bt" | awk '/b[ae]+t/{print $0}'

echo "------------------ cmd 20 ------------------"
echo "bat" | awk '/b[ae]+t/{print $0}'
echo "bet" | awk '/b[ae]+t/{print $0}'
echo "beat" | awk '/b[ae]+t/{print $0}'
echo "beet" | awk '/b[ae]+t/{print $0}'
echo "beeat" | awk '/b[ae]+t/{print $0}'

# [ae]*: 0, 1, n, combinations [ae]?: only one can appear at most 1 time, on combination is allowed. [ae]+: 0, 1, n, combinations
# interval {}

echo "bt" | awk --re-interval '/be{1}t/{print $0}'
echo "bet" | awk --re-interval '/be{1}t/{print $0}'
echo "bet" | awk --re-interval '/be{1}t/{print $0}'
echo "beet" | awk --re-interval '/be{1}t/{print $0}'
echo "beet" | awk --re-interval '/be{2}t/{print $0}'

echo "bt" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
echo "bet" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
echo "beet" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}
echo "beeet" | awk --re-interval '/be{1,2}t/{print $0}' # can add space in {}

echo "bt" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "bat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "bet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "baet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "beat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "beet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "baat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "beeat" | awk --re-interval '/b[ae]{1,2}t/{print $0}' # can't combine
echo "baeet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "baeaet" | awk --re-interval '/b[ae]{1,2}t/{print $0}'
echo "beeaat" | awk --re-interval '/b[ae]{1,2}t/{print $0}'

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
