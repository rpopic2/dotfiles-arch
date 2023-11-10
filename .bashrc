#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export VISUAL=nvim

alias vi=nvim
alias g=git
alias li='links https://lite.duckduckgo.com'

