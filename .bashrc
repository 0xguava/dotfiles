#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \w] \$ '

export PATH=$PATH:~/.local/bin/
export EDITOR=nvim

alias ls="ls --color=auto"

alias grep="grep --color=auto"
alias ip="ip -color=auto"
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
