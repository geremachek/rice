#!/bin/bash

# General

shopt -s autocd
[[ $- == *i* ]] && stty -ixon
set -o vi

# Aliases

alias q='exit'
alias x='exit'
alias adieu='exit'

alias l="ls -l --group-directories-first"
alias ls="ls -F --group-directories-first"

alias c='clear'
alias s="sudo -p ?"
alias a='s apt'
alias li="license -o LICENSE gpl-3.0"
alias ch="chmod +x"
alias mpva="mpv --no-video"
alias m="ukko"
alias v="vim"

# Git aliases

alias ga="git add"
alias gp="git push"
alias gc="git commit -m"

# fetch

export PF_COL3=1
export PF_ASCII="linux"
export PF_INFO="ascii title os wm host uptime pkgs memory"

alias nf="neofetch --ascii_distro ubuntu_old"

# Enviroment

export PATH="$PATH:$HOME/.local/bin:$HOME/.scripts:$HOME/go/bin:/usr/local/go/bin:$HOME/.cargo/bin:$HOME/.merlin/bin"
export ROSE_FORMAT_PREFIX=" → "
export ROSE_PROMPT="λ "
export SPELLBOOK="~/.merlin/spellbook.mn"
export EDITOR="ukko"
export acmeshell="bash"

# Prompt

export PS1=" % "
export PS2="\011" # Tab

# Plan9 Port

export PLAN9=~/plan9port
export PATH=$PATH:$PLAN9/bin
. "$HOME/.cargo/env"
