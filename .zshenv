export HISTFILE="~/.histfile"
export HISTSIZE="10000"
export SAVEHIST="10000"
export PAGER="/bin/more"
export EDITOR="/usr/bin/vim"

if [ -d "/usr/local/bin" ]
then
	export PATH="${PATH}:/usr/local/bin"
fi

if [ -d "${HOME}/bin" ]
then
	export PATH="${PATH}:${HOME}/bin"
fi
