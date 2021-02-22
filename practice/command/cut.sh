#!/bin/bash 
# prerequest: text.txt

# The first step, retrive the names in the file.
echo "\nStart from here.\n"

cut -d " " -f 2 text.txt

echo " <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <>"

cut -d ":" -f 2 text.txt

echo " <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <>"

cut -d ":" -sf 2 text.txt

echo " <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <>"

cut -d " " -sf 1-2 text.txt

echo " <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <>"

cut -c 1-4 text.txt

echo "1:2:3:4" | cut -d ':' -f 3
echo "1:2:9:4" | cut -d ':' -f 3
echo "1:2:9:8" | cut -d ':' -f 1,4


echo "character delimeter"
cut -c 1-4 text.txt

echo "byte delimeter"
cut -b 1-4 text.txt

echo "character delimeter"
cut -c 1-4 text.txt




