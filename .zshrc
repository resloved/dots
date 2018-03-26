# =============================================================
# .zshrc
#
# AUTHOR:  Benjamin Friesen
# REPO:    https://github.com/resloved/dots
# CONTACT: bfriesenwork@gmail.com
#
# =============================================================

# == OHMYZSH ==
# Path to your oh-my-zsh installation.
export ZSH=/home/ben/.oh-my-zsh
ZSH_THEME="terminalpartied"
plugins=(git battery-color)
source $ZSH/oh-my-zsh.sh

# == BINDS ==
# Sudo bind (https://stackoverflow.com/a/970202)
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^a" insert-sudo

bindkey -s "^k" '^Ucd ..^M'
bindkey -s "^l" '^Ule^M'

# == ALIAS ==
alias le="echo ''; ls; echo ''"
alias neo="clear; echo '\n'; neofetch"

# == PATH == 
# Python
export PYTHONPATH=/usr/lib/python3.6/site-packages
# Java
export PATH=/usr/lib/jvm/java-10-jdk/bin/:$PATH
