#!/bin/bash

##Create Makefile

FILE="Makefile"
NEW_NAME="$1"
sed -i "9s/.*/EXECUTABLE\t\t:= ${NEW_NAME}/" "${FILE}"

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
makefile_header="##\n## EPITECH PROJECT, $year\n## $dirname\n## File description:\n## TODO: add description\n##\n"

echo -e "${makefile_header}" | cat - "${FILE}" > temp && mv temp "${FILE}"

##END OF Makefile

##Create main.c
./touch_h ./src/main.c
echo "
#include \"$NEW_NAME.h\"" >> ./src/main.c

echo "
int main(int argc, char **argv)
{
    return 0;
}" >> ./src/main.c
##END OF main.c

##Create test.c
./touch_h ./tests/test.c
echo "
#include <criterion/criterion.h>" >> ./tests/test.c
##END OF test.c

##Create .gitignore
echo "$NEW_NAME
" >> .gitignore
##END OF .gitignore

#Create .h
./touch_h ./includes/$NEW_NAME.h
echo "
#pragma once" >> ./includes/$NEW_NAME.h
##END OF .h

rm -f LICENSE
rm -f touch_h
rm -f init.sh
