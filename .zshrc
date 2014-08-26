# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cypher"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux git phing colored-man history-substring-search composer docker)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.zshenv

alias fxg='find . -type f -print0 | xargs -0 ag'

alias gcom='git checkout master'
alias gf='git fetch'
alias gfd='git fetch de'
alias gfu='git fetch upstream'
alias gpo='git push origin'
alias gph='git push heroku'
alias gpom='git push origin master:master'
alias gpopm='git push origin +master:master'
alias gphm='git push heroku master:master'
alias gphpm='git push heroku +master:master'
alias gr='git rebase'
alias gri='git rebase --interactive'
alias grc='git rebase --continue'
alias grdm='git rebase de/master'
alias gridm='git rebase --interactive de/master'
alias grum='git rebase upstream/master'
alias grium='git rebase --interactive upstream/master'

alias dr='docker run'
alias dri='docker run -ti'
alias drm='docker rm -v'
alias drmf='docker rm -v -f'
alias dps='docker ps'
alias dpsa='docker ps -a'

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '\e[A' up-line-or-search
bindkey '\e[B' down-line-or-search
