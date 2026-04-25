#!/bin/bash
EXT=$1
DIR=$2
count=0
for file in "$DIR"/*"$EXT"
do
    [ -f "$file" ] && let count=count+1
done
echo "Found: $count"
