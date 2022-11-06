#
# ~/.bash_profile
#

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

alias sudo="sudo "

alias info="info --vi-keys"
alias ls="ls -p"
alias nt="nohup $TERM >/dev/null 2>&1 &"
alias e='nvim `fzf`'
alias vw="nvim -c 'norm \ww'"

alias gi=git
alias news=newsboat

export VISUAL=nvim;
export EDITOR=nvim;


