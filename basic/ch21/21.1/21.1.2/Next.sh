#!/bin/bash
# -v : means verbosity, you can push at the first line.
# 2020-10-01 17:02:56

# Not expected. ???? It doesn't match with the book. It shows start to delete from the matched ones.
echo '------------------ cmd 1 ------------------'
sed 'N;/System\nAdministrator/d' data4.txt
sed 'N;/System\nAdministrator/{d;}' data4.txt

echo '------------------ cmd 2 ------------------'
sed 'N;/System\nAdministrator/D' data4.txt

echo '------------------ cmd 3 ------------------'
sed '/^$/{N;/header/D;}' data5.txt

