#!/bin/bash
#
# Disable autocrlf before commit (git config core.autocrlf false)
#

GOTO Windows

# Linux
if [ "$1" != "" ]
then
    cd "$1"
fi
java -Dfile.encoding=UTF8 -jar ./2.1.0.jar
exit

:Windows
if "%1" NEQ "" cd "%1"
start javaw -Dfile.encoding=UTF8 -jar ./2.1.0.jar
exit
