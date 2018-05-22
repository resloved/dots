##### .zshrc / RESLOVED ###########################

##### OHMYZSH #####################################

# PATH
export ZSH=/home/ben/.oh-my-zsh
ZSH_THEME="terminalpartied"
plugins=(git git-prompt battery-color)
source $ZSH/oh-my-zsh.sh

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
# WIFI-MENU
alias wifi="sudo wifi-menu"

##### PATH ######################################## 

# PYTHON
#export PYTHONPATH=/usr/lib/python3.6/site-packages
export PATH=/usr/local/anaconda/bin:$PATH
# JAVA
export PATH=/usr/lib/jvm/java-10-jdk/bin/:$PATH
# RUBY
export PATH="`ruby -e 'puts Gem.user_dir'`/bin:$PATH"
# SCRIPTS
export PATH=$HOME/scripts:$PATH
