#!/bin/bash -l
# Sat Jan  4 13:24:50 2020
# script to filter out bad phone numbers
awk --re-interval '/^\(?[2-9][0-9]{2}\)?( |-|\.)[0-9]{3}( |-|\.)[0-9]{4}/{print $0}'
# (| |-|\.) # it doesn't work well.


