#!/usr/bin/env bash

CWD=`pwd`;
NMOD="$CWD"
DEPTH=0;
ARGS=$@;
NOBIN='\033[0;36m[NOBIN]\033[0m';

if [ $# -eq 0 ];
then
 printf "$NOBIN No arguments supplied\n";
 exit 1;
fi

until [ -d "$NMOD/node_modules" ]; do
  DEPTH=$((DEPTH + 1));
  if [ "$DEPTH" -ge "10" ];
  then
    printf "$NOBIN Max depth reached. Could not find node_modules directory\n";
    exit 1;
  fi
  NMOD="$NMOD/..";
done

cd "$NMOD";
NEWCWD=`pwd`;
IFS=" ";
printf "$NOBIN Found node_modules directory at: $NEWCWD/node_modules/ \n"
printf "$NOBIN Running: %s" "${ARGS[*]}"
echo -e "";

"$NEWCWD/node_modules/.bin/$@"
