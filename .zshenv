export EDITOR="/usr/bin/vim"

if [ -d "/usr/local/bin" ]
then
	export PATH="${PATH}:/usr/local/bin"
fi

if [ -d "${HOME}/bin" ]
then
	export PATH="${PATH}:${HOME}/bin"
fi

if [ -d "${HOME}/.gem/ruby/2.0.0/bin" ]
then
	export PATH="${PATH}:${HOME}/.gem/ruby/2.0.0/bin"
fi

if [ -d "${HOME}/.griveshare/bin" ]
then
	export PATH="${PATH}:${HOME}/.griveshare/bin"
fi

if [ -d "${HOME}/.composer/vendor/bin" ]
then
	export PATH="${PATH}:${HOME}/.composer/vendor/bin"
fi

[ -n "${TMUX}" ] && export TERM="screen-256color"
