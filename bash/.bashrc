#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS1='\[\e[37m\][\[\e[32m\]\u\[\e[37m\]@\[\e[36m\]\h \[\e[37m\]\w\[\e[0m\]]\$ '

eval "$(starship init bash)"

export EDITOR='vim'
export PATH=$PATH:$HOME/bin

## alias
# common
alias ls='ls -a --color=auto'
alias ll='ls -lh'
alias grep='grep --color=auto'
# docker
alias dk='docker $*'
alias dco='docker compose $*'
# application config
alias hyprnvim='nvim ~/dotfiles/hypr/.config/hypr/hyprland.conf'
