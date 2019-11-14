#!/bin/bash -l
# coding according to the textbook
# test the exit status of a function

func1() {
    echo "trying to display a non-existent file."
    ls -l badfile # will show no such file
}

echo "testing the function"

func1
echo "The exit status is: $?" # will show 1

func1() {
    ls -l badfile # will show no such file
    echo "trying to display a non-existent file."
}

func1
echo "The exit status is: $?" # will show 0, the second clause will be ok.




