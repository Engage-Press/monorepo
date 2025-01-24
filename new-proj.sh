#!/bin/bash
GITROOT="$(git rev-parse --show-toplevel)"
PROJROOT="$GITROOT"/src
mkdir -pv "$PROJROOT"

usage="$0: create new project
$0 [-ph] [file]
    -p  Create private project
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

if [ -z "$PROJNAME" ]
then
    echo "$0: Please provide project name" >&2
    exit 1
fi

if echo "foo" | grep -q "[^-_A-Za-z0-9 ]"
then
    echo "Project name should only have [-_A-Za-z0-9 ] to avoid issues" >&2
    exit 1
fi

PROJDIR="${PROJROOT}/${PROJNAME}"

if [ -d "$PROJDIR" ]
then
    echo "$0: $PROJDIR already exists" >&2
    exit 1
fi

cp -r "$GITROOT"/templates "$PROJDIR"
"$PROJDIR"/setup.sh "$PROJDIR" "$PROJNAME" && rm -v "$PROJDIR"/setup.sh

echo "Created project ${PROJNAME} in ${PROJDIR}"
