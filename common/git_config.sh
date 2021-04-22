#!/bin/bash

# <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <> <>
# configure git

# gvim /mnt/hgfs/shares/git.sh 
# git clone https://github.com/wuguang00/shl.git

# <OK:5>
# cd 
# ssh-keygen -t rsa -C "wuguang20084520@163.com"
# cd -
cat  /home/IC/.ssh/id_rsa.pub
 
echo "Host github.com" >> /home/IC/.ssh/config
echo "  Hostname ssh.github.com" >> /home/IC/.ssh/config
echo "  Port 443" >> /home/IC/.ssh/config
echo "  User wuguang00" >> /home/IC/.ssh/config
# 
# 
git config --global user.name "wuguang"
git config --global user.email "wuguang20084520@163.com"
git config --global http.sslVerify false

# git config --global https.sslVerify false

git config --global -l
git config --global http.proxy http://127.0.0.1:1080
git config --global https.proxy http://127.0.0.1:1080
git config --global --unset http.proxy
git config --global --unset https.proxy

git clone https://github.com/wuguang00/shl.git

# git clone https://github.com/wuguang00/shl.git
ssh -T -p 443 git@ssh.github.com
# git remote -v
git config --global -l

git config --global http.sslVerify false

