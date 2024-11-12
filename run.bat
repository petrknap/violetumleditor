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
java --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang.reflect=ALL-UNNAMED -Dfile.encoding=UTF8 -jar ./2.1.0.jar
exit

:Windows
if "%1" NEQ "" cd "%1"
start javaw --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang.reflect=ALL-UNNAMED -Dfile.encoding=UTF8 -jar ./2.1.0.jar
exit
