#
# ~/.bash_profile
#

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

alias sudo="sudo "

alias info="info --vi-keys"
alias ls="ls -pF"
alias nt="nohup $TERM >/dev/null 2>&1 &"
alias vw="nvim -c 'norm \ww'"

function edit_file_opened_by_fzf() {
    local file
    file=$(fzf)
    if [[ -n $file ]]; then
        nvim "$file"
    fi
}
alias e=edit_file_opened_by_fzf

alias diary="$EDITOR $HOME/Documents/my/diary/$(date +%G).md"

alias gi=git
alias news=newsboat

export VISUAL=nvim;
export EDITOR=nvim;
export PAGER=less

if [ -d "$HOME/bin" ] ;
then
    PATH="$HOME/bin:$PATH"
fi
