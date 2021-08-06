#!/bin/bash 

# -t feed to xargs, print it before execution
echo "file1 file2 fiel3" | xargs -t touch

# -n1 feed to xargs, assign the number feed to the later command.
echo "file1 file2 fiel3" | xargs -n1 -t touch

# % is user defined parameter
echo "file1 file2 file3" | xargs -t -I %       sh -c 'touch %; ls -l %'
echo "file0 file1 file2 file3" | xargs -t -I defined sh -c 'touch defined; ls -l defined'

echo -n file1#file2#fiel3#file4 | xargs -d \# -t touch

# xargs read a file.
xargs -a test.txt -t -L 1 echo


find ./ -type f -print0 | xargs --null tar -zcvf cur.tar.gz








