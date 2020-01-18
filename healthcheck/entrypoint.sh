#!/bin/sh -l

if [ $# -eq 0 ] ; then
    echo "Usage: $0 url [user] [password]"
    exit 1
fi

curloptions="-sS --retry 5 --fail"

if [ $# -eq 3 ] ; then
    curloptions="$curloptions -u $2:$3"
fi

curl $curloptions $1 -o /dev/null
