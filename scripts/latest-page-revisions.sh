#!/bin/sh

# cd to your pages directory, then...

# Get paths to latest revisions of all wiki pages
for version in `find . -path '*/current'`
do
    echo $version/`cat $version` | sed -e 's/current/revisions/g'
done
