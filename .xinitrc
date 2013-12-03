#!/bin/sh
eval $(gpg-agent --daemon) &

while true; do
    xsetroot -name "$(date)"
    sleep 5
done &

exec dwm
