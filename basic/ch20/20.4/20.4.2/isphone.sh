#!/bin/bash -l
# 2020-10-03 23:53:33

# script to filter out bad phone numbers

awk --re-interval '/^\(?[2-9][0-9]{2}\)?( |-|\.)?[0-9]{3}( |-|\.)[0-9]{4}/{print $0}'

# (| |-|\.)? # it doesn't work well. Use ( |-|\.)? to replace it.


