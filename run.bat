#!/bin/bash

GOTO Windows

# Linux
if [ "$1" != "" ]
then
    cd "$1"
fi
java -Dfile.encoding=UTF8 -jar ./2.0.0.jar
exit

:Windows
if "%1" NEQ "" cd "%1"
start javaw -Dfile.encoding=UTF8 -jar ./2.0.0.jar
exit
