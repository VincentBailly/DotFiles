#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
alias dotfiles='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
