#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\h \w\$ '
printf '\e[?112c\e[5 q'

export EDITOR=nvim
export VISUAL=nvim

export LESS='-R'
export GTK_IM_MODULE=ibus

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias vi=nvim
alias g=git
alias li='links https://lite.duckduckgo.com'
alias i3='startx /usr/bin/i3'

