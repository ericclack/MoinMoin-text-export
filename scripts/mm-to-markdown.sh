#!/bin/sh

MMPATH=../export/mm
MDPATH=../export/md

for file in `ls -1 $MMPATH`
do
    echo Converting $file
    sed -f mm-to-markdown.text $MMPATH/$file > $MDPATH/$file.md
    #cp $file $EXPORTPATH/$pagename.md
done
