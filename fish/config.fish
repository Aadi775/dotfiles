if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/asdf-vm/asdf.fish

zoxide init fish | source
starship init fish | source

set fish_greeting

set -x EDITOR nvim
set -x TERM xterm-256color
set -x GOPATH $HOME/Workspaces/go
set -x PATH $PATH $GOPATH/bin $DENO_INSTALL/bin $HOME/.local/bin $HOME/.cargo/bin
set -x FZF_DEFAULT_OPTS '--prompt="הּ " --preview "bat --color=always {1} --theme=ansi" --layout=reverse --height=50% --info=inline --border --margin=1 --padding=1'

alias cat="bat"
alias sl="exa --icons --sort type"
alias ls="exa --icons --sort type"
alias ll="exa --icons --long --sort type"
alias l="exa --icons --long --sort type"
alias tree="exa --icons --git -a --tree -s type -I '.git|node_modules|bower_components'"
alias find="fd"
alias :q="exit"
alias :h="man"
alias cd..="cd .."
alias ..="cd .."
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
alias df="df -h"
alias rm="rm -ir"
alias open="xdg-open"
alias copy="xclip -sel clip"
alias merge="xrdb -merge ~/.Xresources"
alias svim="sudoedit"
alias icode="code-insiders"
alias vim="nvim"
alias v="/usr/bin/vim"
alias top="btop"
alias dots="~/.scripts/dots.sh"
alias ports="rustscan -a localhost"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
