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
export PATH=$PATH:/home/anubis/projects/admin/cdist/bin:$(ruby -rubygems -e "puts Gem.user_dir")/bin
export MANPATH=$MANPATH:/home/anubis/projects/admin/cdist/doc/man
export GEM_HOME="$HOME/.gem"

export TERM=xterm
export PAGER=more
export EDITOR=vim

alias ls='ls --color=auto'
task next
