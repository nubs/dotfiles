export EDITOR="/usr/bin/vim"

if [ -d "/usr/local/bin" ]
then
	export PATH="${PATH}:/usr/local/bin"
fi

if [ -d "${HOME}/bin" ]
then
	export PATH="${PATH}:${HOME}/bin"
fi

if [ -d "${HOME}/.gem/ruby/1.9.1/bin" ]
then
	export PATH="${PATH}:${HOME}/.gem/ruby/1.9.1/bin"
fi

if [ -d "${HOME}/cloud/bin" ]
then
	export PATH="${PATH}:${HOME}/cloud/bin"
fi
