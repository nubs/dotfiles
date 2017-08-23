export EDITOR="/usr/bin/vim"

if [ -d "/usr/local/bin" ]
then
	export PATH="${PATH}:/usr/local/bin"
fi

if [ -d "${HOME}/.local/bin" ]
then
	export PATH="${PATH}:${HOME}/.local/bin"
fi

if [ -d "${HOME}/bin" ]
then
	export PATH="${PATH}:${HOME}/bin"
fi

if [ -d "${HOME}/.gem/ruby/2.0.0/bin" ]
then
	export PATH="${PATH}:${HOME}/.gem/ruby/2.0.0/bin"
fi

if [ -d "${HOME}/.cloud/bin" ]
then
	export PATH="${PATH}:${HOME}/.cloud/bin"
fi

export PATH="${PATH}:vendor/bin"

if [ -d "${HOME}/.composer/vendor/bin" ]
then
	export PATH="${PATH}:${HOME}/.composer/vendor/bin"
fi

if [ -d "${HOME}/.npmprefix/bin" ]
then
	export PATH="${HOME}/.npmprefix/bin:${PATH}"
fi

export PATH="${PATH}:node_modules/.bin"

export N_PREFIX="${HOME}/.n"

export PATH="${N_PREFIX}/bin:${PATH}"

[ -n "${TMUX}" ] && export TERM="screen-256color"
