
### for exit
alias q='exit'

### for ls
alias ls='ls -GwF'
#alias ll='ls -lah'
alias la='ls -a'
alias ll='ls -al'
#alias lsa='ls -al'

### mistype recovery
alias ,,='cd ../'
alias ..='cd ..'
alias ...='cd ../'

### for dotfiles
alias viz='vi ~/.zshrc'
alias viv='vi ~/.vimrc'
alias viza='vi ~/.dotfiles/.zsh/aliases.zsh'

### for docker
alias dockps="docker ps -a"

### for terraform
alias tfplan="terraform plan"
alias tfapply="terraform apply"
alias tfinit="terraform init"
alias tfvalid="terraform validate"
alias tfshow="terraform show"
alias tfstate="terraform state"
alias tfws="terraform workspace"

### for bundler
alias be='bundle exec'

### for pipe
alias -g G='| grep '  # e.x. dmesg lG CPU
alias -g L='| $PAGER '
alias -g W='| wc'
alias -g H='| head'
alias -g T='| tail'
alias -g A='| awk'
