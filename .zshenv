export EDITOR="/usr/bin/vim"

if [ -d "/usr/local/bin" ]
then
	export PATH="${PATH}:/usr/local/bin"
fi

if [ -d "${HOME}/.local/bin" ]
then
	export PATH="${PATH}:${HOME}/.local/bin"
fi

if [ -d "${HOME}/.cloud/bin" ]
then
	export PATH="${PATH}:${HOME}/.cloud/bin"
fi
