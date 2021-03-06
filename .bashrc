#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Export ~/bin on path

export PATH=$PATH:/home/damian/bin
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

# swap esc and caps lock
setxkbmap -option caps:swapescape -option ctrl:swap_lalt_lctl

PS1=' \[$blue\]\u\[$reset\] \[$red\]\w\[$reset\] \[$blue\]\$ \[$reset\]\[$white\] '

# editor
export EDITOR=vim

# Base16 Shell
BASE16_SHELL="$HOME/Code/shellscripts/monokai.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL ]]

#history
export HISTCONTROL=ignoredups
export HISTSIZE=1000
