#!/usr/bin/bash
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

alias sudo="sudo "

alias ls="ls -pF"

alias e=edit_file_opened_by_fzf

alias diary="$EDITOR $HOME/Documents/my/diary/$(date +%G).md"

function edit_file_opened_by_fzf() {
    local file
    file=$(fzf)
    if [[ -n $file ]]; then
        nvim "$file"
    fi
}


# [[ -f ~/.bash_profile ]] && source ~/.bash_profile
[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
