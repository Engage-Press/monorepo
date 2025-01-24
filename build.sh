#!/bin/bash
GITROOT="$(git rev-parse --show-toplevel)"
PROJROOT="${GITROOT}/src"

usage="$0: build project
$0 [-ph] [file]
    -p  Build private project
    -h  Display this message
"

while getopts 'ph' OPTION
do
      case "$OPTION" in
          h )
              echo "$usage"
              exit 0
              ;;
          p )
              PROJROOT="${GITROOT}/src-private"
              ;;
          * )
              echo "$0: Invalid flag $OPTION" >&2
              echo "$usage" >&2
              exit 1
              ;;
      esac
done

shift "$((OPTIND - 1))"

PROJNAME="$1"
PROJROOT="${PROJROOT}/${PROJNAME}"

if [ -z "$PROJNAME" ]
then
    echo "$0: Provide the project name to build"
    exit 1
fi

if ! [ -d "$PROJROOT" ]
then
    echo "$0: Project directory does not exist"
    exit 1
fi

(
    cd "$PROJROOT" || exit 1
    declare -a PROJFILES
    # shellcheck disable=SC1091
    source "defs.sh"

    OUTDIR="${GITROOT}/output/${PROJNAME}"
    mkdir -pv "$OUTDIR"

    for file in "${PROJFILES[@]}"
    do
        bn="$(basename -s.typ "$file")"
        "${GITROOT}/typst.sh" compile "$file" "${OUTDIR}/${bn}.pdf"
    done
)
