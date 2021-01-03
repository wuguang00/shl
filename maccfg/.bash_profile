# you can source a standard .bashrc file

# export BASH_SILENCE_DEPRECATION_WARNING=1
umask 022
PS1='\!:\u \w $ ' # PS1='\!:\u@\h \w $ '
export LS_OPTION='--color=auto'
export CLICOLOR=0
export LSCOLORS=gxfxaxdxcxegedabagacad # export LSCOLORS='CafbcxdxbxegedabagGxGx'
export GREP_OPTION='--exclue-dir=regress --exclude=tags'
export LC_ALL=en_US.UTF-8                                           # set language.
export LANG=en_US.UTF-8                                             # set language.

if [ -r .bash_alias ]
then
    source .bash_alias
fi

export LANG=en_US.UTF-8
export PATH="/usr/local/opt/ruby/bin:$PATH"

alias gvim='/Applications/MacVim.app/Contents/bin/mvim'
alias vi='gvim'
alias g='gvim'
alias x='cd ../'
alias xx='cd ../../'
alias xxx='cd ../../../'
alias xxxx='cd ../../../../'
alias gc='vi ~/.bash_profile'
alias gvc='vi ~/.vimrc'
alias dir='ls'
alias ll='ls -alrt'
alias lt='ls -alt'
alias h='history'
alias dd='du -h -d 1'
alias g++='clang++'
alias rm='rm -i'
alias gm='g ~/database/cfg/mm.log'
alias gw='g ~/database/cfg/wuguang.txt'



