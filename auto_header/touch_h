#!/bin/bash
# This script will create a C file with the epitech Header
# Usage: ./touch_h [file_name]

if (( $# != 1 )); then
    echo "Usage: ./touch_h [file_name]"
    exit 84
fi

touch $1
if (( $? != 0 )); then
    echo "Error: Can't create file $1"
    exit 84
fi

basepwd=$(pwd)
currentpwd=$(pwd)
dirname="Unknown"

while [ "$currentpwd" != "/" ]; do
    if [ -d "$currentpwd/.git" ]; then
    dirname=$(git config --get remote.origin.url | sed 's/.*\///' | sed 's/\.git//')
    break
    fi
    currentpwd=$(dirname $currentpwd)
done

year=$(date +%Y)
echo "/*
** EPITECH PROJECT, $year
** $dirname
** File description:
** TODO: add description
*/
" > $basepwd/$1