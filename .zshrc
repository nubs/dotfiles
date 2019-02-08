ZSH=$HOME/.oh-my-zsh

ZSH_THEME="purezsh"

plugins=(git colored-man-pages history-substring-search composer docker docker-compose ssh-agent gulp ember-cli)

zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.zshenv

alias fxg='find . -type f -print0 | xargs -0 ag'

alias gad='git add .'
alias gap='git add -p'
alias gce='git commit --allow-empty -m "Initial commit."'
alias gcom='git checkout master'
alias gcog='git checkout gh-pages'
alias gdc='git diff --cached'
alias gds='git diff --stat'
alias gdsc='git diff --stat --cached'
alias gdw='git diff -w'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gfu='git fetch upstream'
alias gl='git log'
alias glp='git log -p'
alias gls='git log --stat'
alias glrpum='git log -p --reverse upstream/master...HEAD'
alias gpl='git log --graph --all --oneline --decorate --color'
alias gpo='git push origin'
alias gph='git push heroku'
alias gpom='git push origin master:master'
alias gpopm='git push --force-with-lease origin master:master'
alias gpog='git push origin gh-pages:gh-pages'
alias gpopg='git push --force-with-lease origin gh-pages:gh-pages'
alias gphm='git push heroku master:master'
alias gphpm='git push --force-with-lease heroku master:master'
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

alias dcd='docker-compose -f docker-compose.yml -f docker-compose.dev.yml'
alias dcdb='docker-compose -f docker-compose.yml -f docker-compose.dev.yml build'
alias dcdd='docker-compose -f docker-compose.yml -f docker-compose.dev.yml down'
alias dcde='docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec'
alias dcdl='docker-compose -f docker-compose.yml -f docker-compose.dev.yml logs --tail 1000'
alias dcdr='docker-compose -f docker-compose.yml -f docker-compose.dev.yml run'
alias dcdps='docker-compose -f docker-compose.yml -f docker-compose.dev.yml ps'
alias dcdrm='docker-compose -f docker-compose.yml -f docker-compose.dev.yml rm'
alias dcdu='docker-compose -f docker-compose.yml -f docker-compose.dev.yml up'
alias dcdud='docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d'

alias dcm='docker-compose'
alias dcmb='docker-compose build'
alias dcms='docker-compose stop'
alias dcme='docker-compose exec'
alias dcml='docker-compose logs --tail 1000'
alias dcmr='docker-compose run'
alias dcmps='docker-compose ps'
alias dcmrm='docker-compose rm'
alias dcmu='docker-compose up'
alias dcmud='docker-compose up -d'

alias dcu='docker-compose -f docker-compose.yml -f docker-compose.utilities.yml'
alias dcur='docker-compose -f docker-compose.yml -f docker-compose.utilities.yml run'

alias dcuo='docker-compose -f docker-compose.yml -f docker-compose.utilities.yml -f docker-compose.override.yml'
alias dcuor='docker-compose -f docker-compose.yml -f docker-compose.utilities.yml -f docker-compose.override.yml run'

alias phpgolf='php -d short_open_tag=true -d error_reporting=24567'

function vb() {
  npm version --no-git-tag-version "$@"
  VERSION="$(jq --raw-output .version package.json)"
  FILES=(package.json)
  test -f package-lock.json && FILES+=(package-lock.json)
  git add ${FILES}
  git commit --message "Bump version to ${VERSION}."
}

function composer() {
  COMPOSER="$(/usr/bin/env which composer)"
  sudo phpdismod -s cli xdebug
  $COMPOSER "$@"
  STATUS="${?}"
  sudo phpenmod -s cli xdebug

  return "${STATUS}"
}

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '\e[A' up-line-or-search
bindkey '\e[B' down-line-or-search

stty ixany

export NVM_DIR="/home/anubis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
