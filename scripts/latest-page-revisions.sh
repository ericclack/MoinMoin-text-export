#!/bin/sh

# Set env variable for path to your pages directory:
# export PAGEPATH=...

# Get paths to latest revisions of all wiki pages
for version in `find $PAGEPATH -path '*/current'`
do
    echo $version/`cat $version` | sed -e 's/current/revisions/g'
done
