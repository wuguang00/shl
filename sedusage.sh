#!/bin/bash -l
# sed -i used for modify the file directly. Add a file as stdin
sed -i 's/\&\&/ || /g' ./awkusage.sh
