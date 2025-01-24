#!/bin/sh

# Automagically takes care of converting any stray otf files to ttf

# I believe the program used to do the heavy lifting is:
# https://github.com/awesometoolbox/otf2ttf

# It's a python script and is thus slow, so avoid running it if we
# don't have to.

for f in *.otf
do
    bn="$(basename -s.otf "$f")"

    if ! [ -f "${bn}.ttf" ]
    then
        echo "converting $f -> ${bn}.ttf"
        otf2ttf "$f"
    fi
done
