#!/bin/sh
eval $(gpg-agent --daemon) &

xset +fp /usr/share/fonts/local
xset fp rehash
conky 2>/dev/null | while read -r
do
	xsetroot -name "$REPLY"
done &

exec dwm
