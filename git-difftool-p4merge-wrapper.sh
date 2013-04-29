#!/bin/sh
echo "Launching p4merge.exe \"$(cygpath -aw "$1")\" \"$(cygpath -aw "$2")\""
if [ -f $1 -a -f $2 ]
then
  "/cygdrive/c/Programme/Perforce/p4merge.exe" "$(cygpath -aw "$1")" "$(cygpath -aw "$2")"
else
  echo "skipping as one file doesn't exist"
fi
