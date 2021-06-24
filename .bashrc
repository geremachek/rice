#!/bin/bash

#                   _   o       _              _                
#                  | |  /      | |            | |               
#   __,  _  _  _   | |    ,    | |   __,   ,  | |     ,_    __  
#  /  | / |/ |/ |  |/_)  / \_  |/ \_/  |  / \_|/ \   /  |  /    
#  \_/|/  |  |  |_/| \_/  \/   o\_/ \_/|_/ \/ |   |_/   |_/\___/
#    /|                                                         
#    \|                                                         

shopt -s autocd
set -o vi

# Aliases

alias c='clear'
alias q='exit'
alias p='sudo pacman'
alias s='sudo'
alias tarc='tar -czvf'
alias tare='tar -xvzf'
alias l="ls -l"
alias ls="ls -F"
alias li="license -o LICENSE gpl-3.0"
alias pt="date +'%H %M'"
alias tsync="sudo ntpd -qg"
alias merlin="merlin '~/.merlin/spellbook.mn ;spellbook'"
alias ch="chmod +x"

# Git aliases

alias ga="git add"
alias gp="git push"
alias gc="git commit -m"

# pfetch

alias f="pfetch"
export PF_COL3=1
export PF_ASCII="linux"
export PF_INFO="ascii title os wm host uptime pkgs memory"

alias neg="neofetch --ascii ~/etc/glenda.txt"

# Functions

# Add an exec to path

exe() {
	sudo cp "$1" /usr/bin/"$1"
}

# Remove an exec from path

dexe() {
	sudo rm /usr/bin/"$1"
}

# Path

export PATH="$PATH:~/.local/bin:~/.scripts:~/go/bin"

# Prompt

export PS1=" % "

# rose

export ROSE_FORMAT_PREFIX="  "

stty -ixon
