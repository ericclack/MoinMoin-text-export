#!/bin/sh

EXPORTPATH=../export

for file in `./latest-page-revisions.sh`
do
    pagename=`echo $file | sed -e 's/^.*pages\/\(.*\)\/revisions.*$/\1/g'`
    # It isn't actually markdown, but will be soon
    echo Copying $file 
    cp $file $EXPORTPATH/$pagename.md
done
