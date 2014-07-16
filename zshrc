

alias ~="cd ~/../../vagrant/"
alias emacs='emacsclient -nw -c -a ""'
alias python="/usr/local/bin/python2.7" 
alias rm="rm -i"


;export TERM=xterm-256color

#------------

export EDITOR="vim"
bindkey -v 

 vi style incremental search
 bindkey '^R' history-incremental-search-backward
 bindkey '^S' history-incremental-search-forward
 bindkey '^P' history-search-backward
 bindkey '^N' history-search-forward  

 setopt AUTO_CD
