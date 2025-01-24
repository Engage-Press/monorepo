#!/bin/sh
GITROOT="$(git rev-parse --show-toplevel)"

cp "$GITROOT/hooks/pre-commit" "$GITROOT/.git/hooks"
