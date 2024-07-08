#!/bin/sh -l

if [ $# -lt 2 ] ; then
    echo "Usage: $0 url retries [user] [password]"
    exit 1
fi

curloptions="--output /dev/null -silent --show-error --retry $2 --fail"

if [ $# -eq 4 ] ; then
    curloptions="$curloptions --user $3:$4"
fi

curl $curloptions $1 || exit 1

echo Health check for $1 successful.
