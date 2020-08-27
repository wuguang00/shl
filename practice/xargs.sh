#!/bin/bash 
echo "file1 file2 file3" | xargs -t touch           # execute the command
echo "file1 file2 file3" | xargs -n1 -t touch       # execute the command and transfer one parameter at a time

echo "file1 file2 file3" | xargs -t -I % sh -c 'touch %; ls -l %'

# echo -n file1#file2#file3#file4 | xargs -d \# -t touch # It can't work on this Operating system.

