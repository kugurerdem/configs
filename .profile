#
# ~/.bash_profile
#

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

export VISUAL=nvim;
export EDITOR=nvim;
export PAGER=less

if [[ ":$PATH:" != *":$HOME/bin:"* ]] ;
then
    export PATH="$HOME/bin:$PATH"
fi

export PATH="$PATH:/home/rugu/.local/bin"

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]
then
    exec startx
fi
