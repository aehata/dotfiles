#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/.zsh
echo "starting: $(date)"
# source every .zsh file in this repo
for config_file ($ZSH/**/*.zsh) source $config_file;
echo "ending: $(date)"
