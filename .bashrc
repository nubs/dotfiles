RED="\[\033[1;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
PURPLE="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
WHITE="\[\033[1;37m\]"
NO_COLOUR="\[\033[0m\]"

export PS1="${GREEN}\u${YELLOW}\h${WHITE}\W${RED}\$${NO_COLOUR} "
export PS2="${RED}>${NO_COLOUR} "
export PS4="+ "

export XDG_DESKTOP_DIR="${HOME}"
export GEM_HOME="$HOME/.gem"

[ -d "${HOME}/projects/admin/cdist/bin" ] && PATH="${PATH}:${HOME}/projects/admin/cdist/bin"
[ -d "$(ruby -rubygems -e "puts Gem.user_dir" 2>/dev/null)/bin" ] && PATH="${PATH}:$(ruby -rubygems -e "puts Gem.user_dir" 2>/dev/null)/bin"
[ -d "${HOME}/bin" ] && PATH="${PATH}:${HOME}/bin"
export PATH

export TERM=xterm
export PAGER=more
export EDITOR=vim

alias ls='ls --color=auto'
command -v task >/dev/null 2>&1 && task next
