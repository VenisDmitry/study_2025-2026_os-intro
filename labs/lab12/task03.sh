#!/bin/bash
target_dir=${1:-.}
for file in "$target_dir"/*
do
    [ -e "$file" ] || continue
    perms=""
    [ -r "$file" ] && perms="${perms}r" || perms="${perms}-"
    [ -w "$file" ] && perms="${perms}w" || perms="${perms}-"
    [ -x "$file" ] && perms="${perms}x" || perms="${perms}-"
    
    if [ -d "$file" ]; then
        echo "d $perms ${file##*/}"
    else
        echo "- $perms ${file##*/}"
    fi
done
