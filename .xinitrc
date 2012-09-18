#!/bin/sh
xset +fp /usr/share/fonts/local
xset fp rehash
conky 2>/dev/null | while read -r
do
	xsetroot -name "$REPLY"
done &

exec dwm
