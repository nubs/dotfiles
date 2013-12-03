#!/bin/sh
eval $(gpg-agent --daemon) &

xset +fp /usr/share/fonts/local
xset fp rehash
while true; do
    xsetroot -name "$(date)"
    sleep 5
done &

exec dwm
