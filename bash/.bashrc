#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS1='\[\e[37m\][\[\e[32m\]\u\[\e[37m\]@\[\e[36m\]\h \[\e[37m\]\w\[\e[0m\]]\$ '

export EDITOR='vim'
export PATH=$PATH:$HOME/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lh'
alias dk='docker $*'
alias dco='docker compose $*'
