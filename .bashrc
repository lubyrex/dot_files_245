# .bashrc

# User specific aliases and functions

# alias rm='rm -i'
#alias cp='cp -i'
alias mv='mv -i'
alias sshy='ssh chenyoule001@sentry.lianjia.com'
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export PS1='[\u@\h \[\e[38;5;160m\]\[\e[48;5;159m\]\W\[\e[m\]$(__git_ps1 " (%s)")]\$'
# \e[37;1m\W\e[0m
