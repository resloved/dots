##### .zshrc / RESLOVED ###########################

##### OHMYZSH #####################################

# PATH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="circle"
source $ZSH/oh-my-zsh.sh
ZLE_RPROMPT_INDENT=0

# VTERM BUFFER NAME
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ print -Pn "\e]2;%m:%2~\a" }

##### BINDS #######################################

# CLIMB BIND
bindkey -s "^k" '^Ucd ..^M'
# DIR BIND
bindkey -s "^l" '^Ule^M'

##### ALIAS #######################################

# SPACED DIR
alias le="echo ''; ls; echo ''"
# EMACS CLIENT
alias ec="emacsclient -t"
# RELOAD XRESOURCES
alias xr="xrdb -merge ~/.Xresources"
# TIME
alias now="echo -e $(date +'%H:%M')"
# UPLOAD TO STREAMABLE
alias stream="anypaste -x -s -p streamable"
# CLAER => CLEAR
alias claer="clear"
# SSH TERM
alias ssh="TERM=xterm ssh"

##### PATH ########################################

# BIN
export PATH=$HOME/bin:$PATH
# PYTHON
export PATH=/usr/local/anaconda/bin/:$PATH
# JAVA
export PATH=/usr/lib/jvm/java-10-jdk/bin/:$PATH

##### OTHER ######################################

if [[ "$TERM" == "dumb" ]]
then
	unsetopt zle
	unsetopt prompt_cr
	unsetopt prompt_subst
	unfunction precmd
	unfunction preexec
	PS1='$ '
fi
