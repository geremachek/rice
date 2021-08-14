#!/bin/bash

#                   _   o       _              _                
#                  | |  /      | |            | |               
#   __,  _  _  _   | |    ,    | |   __,   ,  | |     ,_    __  
#  /  | / |/ |/ |  |/_)  / \_  |/ \_/  |  / \_|/ \   /  |  /    
#  \_/|/  |  |  |_/| \_/  \/   o\_/ \_/|_/ \/ |   |_/   |_/\___/
#    /|                                                         
#    \|                                                         

# General

shopt -s autocd
stty -ixon
set -o vi

# Aliases

alias q='exit'
alias x='exit'
alias adieu='exit'

alias l="ls -l"
alias ls="ls -F"

alias c='clear'
alias p='sudo pacman'
alias s='sudo'
alias tarc='tar -czvf'
alias li="license -o LICENSE gpl-3.0"
alias pt="date +'%H %M'"
alias ch="chmod +x"

# Git aliases

alias ga="git add"
alias gp="git push"
alias gc="git commit -m"

# fetch

alias f="pfetch"
export PF_COL3=1
export PF_ASCII="linux"
export PF_INFO="ascii title os wm host uptime pkgs memory"

alias neo="neofetch --ascii_distro arch_old"

# Functions

# Add an exec to path

exe() {
	sudo cp "$1" /usr/bin/"$1"
}

# Remove an exec from path

dexe() {
	sudo rm /usr/bin/"$1"
}

# Extract!

ext ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ext()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Enviroment

export PATH="$PATH:$HOME/.local/bin:$HOME/.scripts:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.merlin/bin"
export PS1=" ; "
export ROSE_FORMAT_PREFIX=" > "
export ROSE_PROMPT="λ "
export SPELLBOOK="~/.merlin/spellbook.mn"

export PLAN9=/home/freyja/.plan9port
export PATH=$PATH:$PLAN9/bin
