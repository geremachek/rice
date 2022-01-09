#!/bin/bash

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
alias s="sudo -p ?"
alias p='s pacman'
alias tarc='tar -czvf'
alias li="license -o LICENSE gpl-3.0"
alias ch="chmod +x"
alias mpva="mpv --no-video"
alias m="ukko"
alias v="vim"

alias rm="rm -i"

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

# Enviroment

export PATH="$PATH:$HOME/.local/bin:$HOME/.scripts:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.merlin/bin"
export PS1=" % "
export ROSE_FORMAT_PREFIX=" → "
export ROSE_PROMPT="λ "
export SPELLBOOK="~/.merlin/spellbook.mn"

# Plan9 Port

export PLAN9=/home/freyja/plan9port
export PATH=$PATH:$PLAN9/bin
