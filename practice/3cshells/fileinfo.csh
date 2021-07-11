#!/bin/csh

# fileinfo dxy3abc 920307
# fileinfo displays some details about a file

ls -l $1
wc -l $1
file $1

chmod u+x spy.csh

# set path = ($path ./)
# spy.csh

