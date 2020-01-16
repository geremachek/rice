stty -ixon

# Aliases

alias on='setterm -cursor on'
alias off='setterm -cursor off'
alias c='clear'
alias q='exit'
alias p='sudo pacman'
alias s='sudo'
alias co="conch"
alias tarc='tar -czvf'
alias tare='tar -xvzf'
alias l="ls -l"
alias ls="ls --color"
alias rm="rb m"
alias repos='cd ~/repos'
alias ~="cd ~"
alias li="license -o LICENSE gpl-3.0"
alias pz="przm -bo"

alias rice="cd ~/repos/rice"

# Git aliases

alias ga="git add"
alias gp="git push"

# pfetch

alias f="pfetch"
alias nf="neofetch --ascii_distro darwin"
export PF_COL3=4
export PF_ASCII="MacOS"

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

# wipe a file

wipe() {
	echo -n "" > ${1}
}

# catfm

catfm() {
	/usr/bin/catfm "${@}" && cd "$(< /tmp/kitty)"
}

# g++

grn() {
	g++ ${1} -lncurses ; ./a.out ; rm a.out
}

gr() {
	g++ ${1} ; ./a.out ; rm a.out
}

# Prompt

export PS1=" \e[31m$\e[0m "

# sock

alias lock="s sock -e -B -c=ffffff -b=000000 -o=d1cfb3 -C"
alias lk="sock -e -B -c=ffffff -b=000000 -o=d1cfb3 -C -m='All terminals are locked!' -k"
lk
