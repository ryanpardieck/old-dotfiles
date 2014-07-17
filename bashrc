# .bashrc

#use vi key bindings
set -o vi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source ~/nvm/nvm.sh

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi


export TERM=xterm-256color


