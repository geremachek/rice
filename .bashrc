stty -ixon

# Aliases

alias on='setterm -cursor on'
alias off='setterm -cursor off'
alias c='clear'
alias q='exit'
alias p='sudo pacman'
alias y='yaki'
alias s='sudo'
alias tarc='tar -czvf'
alias tare='tar -xvzf'
alias l="ls -l"
alias ls="ls --color"
alias tt="tt -u"
alias rm="rb m"
alias repos='cd ~/repos'
alias gor='go run'
alias gob='go build'
alias ~="cd ~"
alias li="license -o LICENSE gpl-3.0"
alias cht="echo -e '\n C̵̻̘͍̲̯̩̰̲͙͓̝͇͕̩̀̃̽̀̑̾̈̅̀ḧ̶̝̬́̽t̷̛̩̪́́̓̍̉̓h̸̡͙̲͓̩̲̞̦̻͈̩̃̓̀͗̒̈́̿u̷̧̘̩̗͛̂̍̆́̿͆̂͛͌͗̈́̌l̸̢̮̖͕͇̬̟̪̜̳̻̙̇̓̉̓̔̇̌̐̓̇͆́̍̕͜͝ͅh̶͍͕̜̀̒̐̈́̄́ư̷̥̖̳̱̠͖̒̃̀͜ͅ\n'"

alias rice="cd ~/repos/rice"

# Git aliases

alias ga="git add"
alias gp="git push"

vd="/usr/share/vim/vim81/colors"

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

wipe() {
	echo -n "" > ${1}
}

export PROMPT_COMMAND='printf "\e[0m"'
export PS1=" \e[31;4mᛡ\e[0m "
