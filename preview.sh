#!/bin/bash
GITROOT="$(git rev-parse --show-toplevel)"
OUTDIR="${GITROOT}/output/preview"
SRCDIR="${GITROOT}/src"
OPEN=false

usage="$0: Preview typst file
$0 [-oph] [file]
    -o  Open file using xdg-open or similar
    -p  Operate on private projects
    -h  Display this message
"

while getopts 'oph' OPTION
do
      case "$OPTION" in
          o )
              OPEN=true
              ;;
          h )
              echo "$usage"
              exit 0
              ;;
          p )
              SRCDIR="${GITROOT}/src-private"
              ;;
          * )
              echo "$0: Invalid flag $OPTION" >&2
              echo "$usage" >&2
              exit 1
              ;;
      esac
done

shift "$((OPTIND - 1))"

mkdir -pv "${OUTDIR}"

if [ -z "$1" ]
then
    echo "$0: Please provide input file" >&2
    exit 1
fi

input="$1"

if ! [ -f "$input" ]
then
    echo "$0: $input does not exist or is not a file" >&2
    exit 1
fi

# I don't care to learn bashisms tbh
# shellcheck disable=SC2001
PROJNAME="$(echo "$input" | sed -E -e 's|.*?src[^/]*/([^/]*)/?.*?|\1|')"

if [ -z "$PROJNAME" ] || [ -n "$(echo "$PROJNAME" | tr -dc '/')" ]
then
    echo "$0: Unable to guess project name (got \"$PROJNAME\")" >&2
    exit 1
fi

PROJROOT="${SRCDIR}/${PROJNAME}"
echo "Loading defs for $PROJNAME"

cd "$PROJROOT" || exit 1
# shellcheck disable=SC1091
source "defs.sh"
cd - || exit 1

bn="$(basename -s.typ "$input")"
OUTFILE="${OUTDIR}/${bn}.pdf"

if $OPEN
then
    # XXX: Create a blank file so it can be opened
    if ! [ -f "$OUTFILE" ]
    then
        # See https://stackoverflow.com/questions/17279712/what-is-the-smallest-possible-valid-pdf
        cat >"$OUTFILE" <<'ENDOFPDF'
%PDF-1.0
1 0 obj<</Type/Catalog/Pages 2 0 R>>endobj 2 0 obj<</Type/Pages/Kids[3 0 R]/Count 1>>endobj 3 0 obj<</Type/Page/MediaBox[0 0 3 3]>>endobj
xref
0 4
0000000000 65535 f
0000000010 00000 n
0000000053 00000 n
0000000102 00000 n
trailer<</Size 4/Root 1 0 R>>
startxref
149
%EOF
ENDOFPDF
    fi
    if [ -z "$EPM_PDF_OPEN" ]
    then
        if [ "$(uname)" = "Darwin" ]
        then
            open "$OUTFILE" &
        else
            xdg-open "$OUTFILE" &
        fi
    else
        "$EPM_PDF_OPEN" "$OUTFILE" &
    fi
fi

"${GITROOT}/typst.sh" watch "$input" "$OUTFILE"
