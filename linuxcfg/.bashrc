# .bashrc
# Source global definitions

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export history=6000

# User specific aliases and functions
export PS1='\u@\h \w \$ '

# below used for amrcc compilation, but maybe I can source them in my deposit.
# export PATH=/opt/gcc-arm-none-eabi-8-2019-q3-update/bin:$PATH
# export ARCH=armv7m
# export CROSS_COMPILE=arm-none-eabi-

# export LC_ALL='en_US.UTF-8'
# export LANG='en_US.UTF-8'

alias rm='rm -i'
alias g='gvim'
alias gc='gvim ~/.bashrc'
alias gvc='gvim ~/.vimrc'
alias svi='cd ~/svi'
alias ll='ls -al'
alias x='cd ../'
alias xx='cd ../../'
alias xxx='cd ../../../'
alias xxxx='cd ../../../../'
alias xxxxx='cd ../../../../../'
alias h='history'
alias ddu='du -h --max-depth=1'
alias gw='gvim ~/wuguang.txt'

alias vdk='/usr/vendor/synopsys/start_rt.sh'
alias vd='cd /usr/vendor/synopsys/workspace/andy.wu/'

alias soc='cd /usr/vendor/synopsys/workspace/andy.wu'
