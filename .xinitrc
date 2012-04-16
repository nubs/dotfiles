#!/bin/sh
conky 2>/dev/null | while read -r
do
	xsetroot -name "$REPLY"
done &

exec dwm
