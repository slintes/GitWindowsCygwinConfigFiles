#!/bin/sh
echo "Launching notepad++.exe \"$(cygpath -aw "$*")\""
"/cygdrive/c/Daten/Programs/PortableApps/Notepad++Portable/Notepad++Portable.exe" -multiInst -notabbar -nosession "$(cygpath -aw "$*")"
