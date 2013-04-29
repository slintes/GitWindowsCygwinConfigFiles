#!/bin/sh
echo "Launching p4merge.exe \"$(cygpath -aw "$1")\" \"$(cygpath -aw "$2")\" \"$(cygpath -aw "$3")\" \"$(cygpath -aw "$4")\""
if [ -f $1 -a -f $2 -a -f $3 -a -f $4 ]
then
  "/cygdrive/c/Programme/Perforce/p4merge.exe" "$(cygpath -aw "$1")" "$(cygpath -aw "$2")" "$(cygpath -aw "$3")" "$(cygpath -aw "$4")"
else
  echo "skipping as one file doesn't exist"
fi
