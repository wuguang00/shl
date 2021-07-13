#!/bin/bash -l
# the usage of awk: awk 'pattern{action} pattern{action}'
# I should learn it more accurately, so we can get comprehensive knowledge.
# 
awk '/wuguang/{print $1} /Setting/{print $2}' ./sedusage.sh




