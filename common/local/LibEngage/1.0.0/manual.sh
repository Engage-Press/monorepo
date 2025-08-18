#!/bin/sh
GITROOT="$(git rev-parse --show-toplevel)"
"$GITROOT"/typst.sh watch manual.typ
