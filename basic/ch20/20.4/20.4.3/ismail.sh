#!/bin/bash -l
# 2020-10-03 23:57:31

# script to filter out email address.

awk '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/{print $0}'




