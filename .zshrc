ZSH=$HOME/.oh-my-zsh

ZSH_THEME="purezsh"

plugins=(archlinux git colored-man-pages history-substring-search composer docker docker-compose ssh-agent gulp ember-cli)

zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.zshenv

alias fxg='find . -type f -print0 | xargs -0 ag'

alias gad='git add .'
alias gap='git add -p'
alias gce='git commit --allow-empty -m "Initial commit."'
alias gcom='git checkout master'
alias gdc='git diff --cached'
alias gds='git diff --stat'
alias gdsc='git diff --stat --cached'
alias gdw='git diff -w'
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

alias phpgolf='php -d short_open_tag=true -d error_reporting=24567'

function vb() {
  test -n "${1}" && \
    sed -i 's/\("version".*:.*\)".*"/\1"'${1}'"/' package.json && \
    git add package.json && \
    git commit -m "Bump version to ${1}."
}

alias gv='jq -r .version package.json'
alias gvj="gv | sed 's/\\([^.]*\\)\\.\\([^.]*\\)\\.\\([^.-]*\\)\\-\\?\\(.*\\)/\\1/'"
alias gvm="gv | sed 's/\\([^.]*\\)\\.\\([^.]*\\)\\.\\([^.-]*\\)\\-\\?\\(.*\\)/\\2/'"
alias gvp="gv | sed 's/\\([^.]*\\)\\.\\([^.]*\\)\\.\\([^.-]*\\)\\-\\?\\(.*\\)/\\3/'"
alias gvbj='echo "$(expr "$(gvj)" + 1).0.0"'
alias gvbm='echo "$(gvj).$(expr "$(gvm)" + 1).0"'
alias gvbp='echo "$(gvj).$(gvm).$(expr "$(gvp)" + 1)"'
alias vbj="vb \"\$(gvbj)\""
alias vbm="vb \"\$(gvbm)\""
alias vbp="vb \"\$(gvbp)\""

function composer() {
  COMPOSER="$(/usr/bin/env which composer)"
  sudo php5dismod -s cli xdebug
  $COMPOSER "$@"
  STATUS="${?}"
  sudo php5enmod -s cli xdebug

  return "${STATUS}"
}

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '\e[A' up-line-or-search
bindkey '\e[B' down-line-or-search

export NVM_DIR="/home/anubis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
