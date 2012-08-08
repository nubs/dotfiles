HISTFILE="~/.histfile"
HISTSIZE="10000"
SAVEHIST="10000"
PAGER="/bin/more"
EDITOR="/usr/bin/vim"

if [ -d "/usr/local/bin" ]
then
	PATH="${PATH}:/usr/local/bin"
fi

if [ -d "${HOME}/bin" ]
then
	PATH="${PATH}:${HOME}/bin"
fi
