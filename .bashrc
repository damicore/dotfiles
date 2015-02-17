#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#Original:
#PS1='[\u@\h \W]\$ '

#PS1='[\u@\h \W]\$ '  # To leave the default one
#DO NOT USE RAW ESCAPES, USE TPUT
reset=$(tput sgr0)
red=$(tput bold ; tput setaf 1)
blue=$(tput bold ; tput setaf 4)
green=$(tput setaf 2)
source /etc/bash_completion.d/herbstclient-completion

setxkbmap -option caps:swapescape
PS1='\[$blue\]\u\[$reset\] \[$red\]\w\[$reset\] \[$blue\]\$ \[$reset\]\[$white\] '
