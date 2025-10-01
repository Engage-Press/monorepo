#!/bin/bash
# shellcheck disable=SC2034
# ^ Ignoring the "variable unused" warning, since this file will be sourced.

# This file sets up all the variables for the project "strategos-t"

# Top level directories. The parent script *does* set these itself, but hey,
# maybe you want to do some fuckshit with them.
GITROOT="$(git rev-parse --show-toplevel)"
PROJNAME="strategos-t"

# Files to build. Relative to the top of the project directory ($PROJROOT)
PROJFILES=(rules.typ)

# Files to turn into booklets. You can just set it to PROJFILES.
BOOKLETS=${PROJFILES[*]}
