#!/bin/bash
# shellcheck disable=SC2034
# ^ Ignoring the "variable unused" warning, since this file will be sourced.

# This file sets up all the variables for the project "%PROJNAME%"

# Top level directories. The parent script *does* set these itself, but hey,
# maybe you want to do some fuckshit with them.
GITROOT="$(git rev-parse --show-toplevel)"
PROJNAME="%PROJNAME%"

# Files to build. Relative to the top of the project directory ($PROJROOT)
# So you can usually just list files like (foo.typ bar.typ baz.typ).
PROJFILES=()

# Files to turn into booklets. You can just set it to PROJFILES by
# uncommenting the first line and commenting the second below.
# BOOKLETS=${PROJFILES[*]}
BOOKLETS=()
