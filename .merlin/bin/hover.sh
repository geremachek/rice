#!/bin/sh
# do not use

line="$1"
length="$2"
window="$3"

top=$(( line - window ))
bottom=$(( line + window ))

if [ $top -ge "$line" ]; then
	top=1
fi

if [ $bottom -lt "$length" ]; then
	top=$length
fi

printf "%s %s ;peer" "$top" "$bottom"
