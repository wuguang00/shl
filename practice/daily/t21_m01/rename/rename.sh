#!/bin/bash 

# will modify the file name foo* at list one character is used.

echo "Start from this point. Original filelist."

ls -alt

echo "1. Start from, match foo?? to foo?, foo0 -> foo, delete one zero/0"

rename foo0 foo foo???
ls -alt

sleep 10

echo "2. Start from, match foo? to foo, foo0 -> foo, delete one zero/0, just name one piece of file."

rename foo0 foo foo??
rename foo0 foo foo0
ls -alt

sleep 10

echo "3. Start from, match foo? to foo, foo -> foo0, 3 piece will be added."

rename foo foo0 foo?
rename foo foo0 foo

ls -alt

sleep 10

echo "4. Start from, match foo?? to foo, foo -> foo0, 3 piece will be added. Added one 0 again"
rename foo foo0 foo??
ls -alt

# You can understand it with the regular expression



