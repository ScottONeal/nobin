#!/usr/bin/env bash

CWD=`pwd`;
NMOD="$CWD"
DEPTH=0;
NOBIN='\033[0;36m[NOBIN]\033[0m';

echo "$@"
if [ $# -eq 0 ];
then
 printf "$NOBIN No arguments supplied to Nobin.\n";
 exit 1;
fi

until [ -d "$CWD/node_modules" ]; do
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
printf "$NOBIN Found node Modules directory at: $NEWCWD \n"
printf "$NOBIN running: $@ \n"

"$NEWCWD/node_modules/.bin/$@"
