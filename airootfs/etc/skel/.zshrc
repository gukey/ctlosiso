#!/usr/bin/zsh

ZSH=/usr/share/oh-my-zsh/
# ZSH_THEME="robbyrussell"
# ZSH_THEME="refined"
# ZSH_THEME="dracula"
ZSH_THEME="af-magic"
DISABLE_AUTO_UPDATE="true"
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
)
export PATH=$HOME/.bin:/usr/local/bin:$PATH
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# if [[ $TERM == xterm-termite ]]; then
# 	. /etc/profile.d/vte.sh
# 	__vte_osc7
# fi

# if [[ $TILIX_ID ]]; then
# 	source /etc/profile.d/vte.sh
# fi

export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'mousepad'; else echo 'nano'; fi)"
export BROWSER="firefox"
export SSH_KEY_PATH="~/.ssh/dsa_id"

if [ -f ~/.alias_zsh ]; then
  . ~/.alias_zsh
fi