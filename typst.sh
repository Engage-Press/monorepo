#!/bin/sh
GITROOT="$(git rev-parse --show-toplevel)"
# If you're on some kind of Windows environment that wants a ; for
# the path separator, lmk the predicate to detect that environment
# and I will add some logic here.  For now, we're just going to use
# the Unix-like :
SEP=":"

FONTPATH="${GITROOT}/fonts${SEP}${GITROOT}/fonts/monospace${SEP}${GITROOT}/fonts/display${SEP}${GITROOT}/fonts-private"
PKGPATH="${GITROOT}/common"

subcmd="$1"
shift

case "$subcmd" in
    fonts )
        typst fonts --font-path="$FONTPATH" \
              --ignore-system-fonts \
              --variants
        ;;
    compile )
        typst compile --font-path="$FONTPATH" \
              --ignore-system-fonts \
              --package-path="$PKGPATH" \
              "$@"
        ;;
    watch )
        typst watch --font-path="$FONTPATH" \
              --ignore-system-fonts \
              --package-path="$PKGPATH" \
              "$@"
        ;;
    * )
        echo "$0: Unknown subcmd $subcmd" >&2
        echo "$0: Try compile/watch [input] [output]" >&2
        echo "$0: Or run typst fonts for a list of fonts + variants" >&2
        ;;
esac
