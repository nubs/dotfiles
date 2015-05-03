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
plugins=(archlinux git colored-man history-substring-search composer docker)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.zshenv

alias fxg='find . -type f -print0 | xargs -0 ag'

alias gad='git add .'
alias gce='git commit --allow-empty -m "Initial commit."'
alias gcom='git checkout master'
alias gds='git diff --stat'
alias gdsc='git diff --stat --cached'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gfu='git fetch upstream'
alias glp='git log -p'
alias gls='git log --stat'
alias glrpum='git log -p --reverse upstream/master...HEAD'
alias gpl='git log --graph --all --oneline --decorate --color'
alias gpo='git push origin'
alias gph='git push heroku'
alias gpom='git push origin master:master'
alias gpopm='git push origin +master:master'
alias gpog='git push origin gh-pages:gh-pages'
alias gpopg='git push origin +gh-pages:gh-pages'
alias gphm='git push heroku master:master'
alias gphpm='git push heroku +master:master'
alias gr='git rebase'
alias gri='git rebase --interactive'
alias grc='git rebase --continue'
alias grum='git rebase upstream/master'
alias grium='git rebase --interactive upstream/master'
alias grug='git rebase upstream/gh-pages'
alias griug='git rebase --interactive upstream/gh-pages'
alias grom='git rebase origin/master'
alias griom='git rebase --interactive origin/master'
alias grog='git rebase origin/gh-pages'
alias griog='git rebase --interactive origin/gh-pages'

alias dbt='docker build --tag'
alias dt='docker tag'
alias dp='docker push'
alias dr='docker run'
alias dri='docker run -ti'
alias drm='docker rm -v'
alias drmf='docker rm -v -f'
alias dps='docker ps'
alias dpsa='docker ps -a'

alias fr='fig run'
alias frs='fig run service'
alias frsd='fig run servicedev'
alias frw='fig run web'
alias frwd='fig run webdev'
alias fps='fig ps'
alias frm='fig rm'

alias gv='jq -r .version package.json'
alias gvj="gv | sed 's/\\(.*\\)\\.\\(.*\\)\\.\\(.*\\)/\\1/'"
alias gvm="gv | sed 's/\\(.*\\)\\.\\(.*\\)\\.\\(.*\\)/\\2/'"
alias gvp="gv | sed 's/\\(.*\\)\\.\\(.*\\)\\.\\(.*\\)/\\3/'"
alias gvbj='echo "$(expr "$(gvj)" + 1).0.0"'
alias gvbm='echo "$(gvj).$(expr "$(gvm)" + 1).0"'
alias gvbp='echo "$(gvj).$(gvm).$(expr "$(gvp)" + 1)"'
alias vbj="sed -i 's/\\(\"version\".*:.*\\)\".*\"/\\1\"'\$(gvbj)'\"/' package.json && git add package.json && git commit -m \"Bump version to \$(gv)\"."
alias vbm="sed -i 's/\\(\"version\".*:.*\\)\".*\"/\\1\"'\$(gvbm)'\"/' package.json && git add package.json && git commit -m \"Bump version to \$(gv)\"."
alias vbp="sed -i 's/\\(\"version\".*:.*\\)\".*\"/\\1\"'\$(gvbp)'\"/' package.json && git add package.json && git commit -m \"Bump version to \$(gv)\"."

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '\e[A' up-line-or-search
bindkey '\e[B' down-line-or-search
