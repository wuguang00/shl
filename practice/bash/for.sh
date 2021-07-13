#!/bin/bash -l

sum=0
for n in {2..8}                     # sequence for loop
do
    echo $n
done

for n in $(seq 2 2 12)                     # sequence for loop
do
    echo $n
done

for n in {1..100}                     # sequence for loop
do
    ((sum+=n))                      # used for calculate expression.
done

echo $sum

for c in {A..Z}
do
    printf "%c" $c
done

echo ""
echo "Bye, Done."
