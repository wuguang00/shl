#!/bin/bash -l
# Sat Jan  4 13:24:50 2020

awk '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/{print $0}'




