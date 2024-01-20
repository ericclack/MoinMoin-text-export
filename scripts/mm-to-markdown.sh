#!/bin/sh

MMPATH=../export/mm
MDPATH=../export/md

for file in `ls -1 $MMPATH`
do
    echo Converting $file
    sed -E -f mm-to-markdown.text $MMPATH/$file > $MDPATH/$file.md
done
