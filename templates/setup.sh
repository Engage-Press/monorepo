#!/bin/sh
PROJDIR="$1"
PROJNAME="$2"

if [ -z "$PROJDIR" ] || [ -z "$PROJNAME" ]
then
    echo "$0: cannot set up - project directory or name not provided" >&2
    exit 1
fi

echo "Setting up $PROJNAME in $PROJDIR"

find "$PROJDIR" -type f -print0 | xargs -0 sed -i \
                                        -e "s/%PROJNAME%/${PROJNAME}/g"\
                                        -e "s|%PROJDIR%|${PROJDIR}|g"
