#!/bin/bash
sed 's/dog/cat/' data1.txt
sed -e 's/brown/green/; s/dog/cat/' data1.txt
sed -e '
s/brown/blue/
s/fox/elephant/
s/dog/cat/' data1.txt

sed -e '
s/brown/blue/
s/fox/elephant/
s/dog/cat/' data1.txt

sed -f script.sed data1.txt


