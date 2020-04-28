# Aliases

alias c='clear'
alias q='exit'
alias p='sudo pacman'
alias s='sudo'
alias tarc='tar -czvf'
alias tare='tar -xvzf'
alias l="ls -l"
alias ls="ls -F"
alias repos='cd ~/repos'
alias ~="cd ~"
alias li="license -o LICENSE gpl-3.0"
alias pz="przm -bo"
alias rmd="rm -rf"
alias pt="plain -u"

# Git aliases

alias ga="git add"
alias gp="git push"

# pfetch

alias f="pfetch"
export PF_COL3=1
export PF_ASCII="binix"

# Functions

# Add an exec to path

exe() {
	sudo cp "$1" /usr/bin/"$1"
}

# Remove an exec from path

dexe() {
	sudo rm /usr/bin/"$1"
}

# Make a script an exec

ch() {
	chmod +x "$1"
}

# Download a repo from github

gh() {
	git clone https://github.com/$1
}

# catfm

catfm() {
	/usr/bin/catfm "${@}" && cd "$(< /tmp/kitty)"
}

# cursors

thin() {
	printf "\e[5 q"
}

block() {
	printf "\e[1 q"
}

# Path

PATH=$PATH:~/.scripts:/usr/java/jre1.8.0_241/bin

# Prompt

export PS1=" \e[34m─\e[0m "

# sock

alias lock="s sock -B -C"
lock -k -m="All Terminals Are Locked!"

# pywal

alias pws="wal -n -i"
(cat ~/.cache/wal/sequences &)


stty -ixon
