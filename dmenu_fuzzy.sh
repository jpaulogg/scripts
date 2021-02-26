#!/bin/sh
exec > /dev/null 2>&1

dir=${XDG_CACHE_HOME:-${HOME}/.cache}/
cache=${dir}/dfuzzy
[ ! -e "$dir" ] && mkdir -p "$dir"

[ ! -f "$cache" ] && find "$HOME" -mindepth 1 -name ".*" -prune -o -print sort > "$cache"

cat "$cache" | dmenu -p "fuzzy" -i -l 20 -fn 16 | while read opt
do
	st -e nvim "$opt" &
done
