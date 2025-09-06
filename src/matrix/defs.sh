#!/bin/bash
# shellcheck disable=SC2034
# ^ Ignoring the "variable unused" warning, since this file will be sourced.

# This file sets up all the variables for the project "matrix"

# Top level directories. The parent script *does* set these itself, but hey,
# maybe you want to do some fuckshit with them.
GITROOT="$(git rev-parse --show-toplevel)"
PROJROOT="/home/pippa/writing/monorepo/src/matrix"
PROJNAME="matrix"

# Files to build. Relative to the top of the project directory ($PROJROOT)
PROJFILES=(basic-mg-rules.typ pbom.typ)

# Files to turn into booklets. You can just set it to PROJFILES by
# uncommenting the first line and commenting the second below.
# BOOKLETS=${PROJFILES[*]}
BOOKLETS=()
