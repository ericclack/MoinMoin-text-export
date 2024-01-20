#!/bin/sh

EXPORTPATH=../export/mm

for file in `./latest-page-revisions.sh`
do
    pagename=`echo $file | sed -e 's/^.*pages\/\(.*\)\/revisions.*$/\1/g'`
    echo Copying $file 
    cp $file $EXPORTPATH/$pagename
done
