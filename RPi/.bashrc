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

alias xterm='/usr/bin/uxterm'
alias bxterm='bsub uxterm'
alias bcompare='/ic/tools/bcompare/4.3.3/bcompare.sh'
alias grep='grep --color=auto -Tn'
alias gxs='grep --exclude-dir=sim'

alias g='gvim'
alias gc='gvim ~/.bashrc'
alias gvc='gvim ~/.vimrc'
alias svi='cd ~/svi'
alias ls='ls --color'
alias ll='ls -al'
alias l='ls -alrt'
alias ll='ls -AlrtF'
alias lt='ls -Alt'

alias x='cd ../'
alias xx='cd ../../'
alias xxx='cd ../../../'
alias xxxx='cd ../../../../'
alias xxxxx='cd ../../../../../'
alias h='history'
alias ddu='du -h --max-depth=1; date;'
alias bj='bjobs -w'
alias bf='bjobs -UF'


alias ddu='du -h --max-depth=1'
alias gw='gvim ~/wuguang.txt'
alias rm='rm -i'
alias cp='cp -i'
alias gu='gvim ~/program/shl/maccfg/usefully.txt'
alias ggg='git status; git stash; git pull; git stash pop; git status;'
alias gdf='gvimdiff'
alias vdf='vimdiff'

alias vdk='/usr/vendor/synopsys/start_rt.sh'
alias vd='cd /usr/vendor/synopsys/workspace/andy.wu/'

# find . -name "*.tcl" -print | xargs wc -l

alias soc='cd /usr/vendor/synopsys/workspace/andy.wu'

