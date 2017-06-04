source /home/rafael/GitHub/dotfiles/base16-default-dark.sh
source /home/rafael/GitHub/dotfiles/go.sh
source /home/rafael/GitHub/dotfiles/git.plugin.sh

export PS1="\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

alias vi=vim
alias G=grep
alias grep="grep --color=always"
alias ip="ip --color"
alias ls="ls --color=always"
alias ll="ls -l"

# Less Colors for Man Pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
