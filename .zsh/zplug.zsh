export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh


zplug "b4b4r07/enhancd", use:"init.sh"

# compinit 以降に読み込むようにロードの優先度を変更する
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "zsh-users/zsh-history-substring-search"


zplug load
