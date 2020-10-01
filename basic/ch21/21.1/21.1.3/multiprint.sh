#!/bin/bash
# -v : means verbosity, you can push at the first line.
# 2020-10-01 17:19:13

echo '------------------ cmd 1 ------------------'
sed -n 'N; /System\nAdministrator/P' data3.txt # First line

echo '------------------ cmd 2 ------------------'
sed -n 'N; /System\nAdministrator/p' data3.txt # Two lines.

echo '------------------ cmd 3 ------------------'
sed '/^$/{N;/header/D;}' data5.txt

