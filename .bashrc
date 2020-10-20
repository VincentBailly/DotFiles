#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export NODE_OPTIONS=--max-old-space-size=27000

alias dotfiles='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias r=ranger
alias g=git
alias gs='git status -s'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gc='git commit'
alias gl='git log'
