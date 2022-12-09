$#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: ./init_my_repo.sh [project_name] [option]"
	echo "Options:"
	echo -e "\t-math: add -lm to the Makefile"
	echo -e "\t-ncurses: add -lncurses to the Makefile"
	echo -e "\t-csfml: add -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-audio -lcsfml-network to the Makefile"
	exit 1
fi

BIN=${1:-"default"}
MAKEFILENAME=$(echo $BIN | sed 's/[[:punct:][:space:][:cntrl:]]/_/g')
MAKEFILE2=$(echo $BIN | sed 's/[[:punct:][:space:]]/_/g' | sed 's/[a-z]/\U&/g' | sed 's/$/_H_/')
mkdir include
mkdir src
echo "*.out
*.txt
*.pdf
*.log
.vscode
.idea
vgcore.*" > .gitignore
echo "/*
** EPITECH PROJECT, 2022
** ----
** File description:
** main.c
*/

#ifndef $MAKEFILE2
    #define $MAKEFILE2
#endif
" > include/"$MAKEFILENAME".h
echo "/*
** EPITECH PROJECT, 2022
** ----
** File description:
** main.c
*/

int main(int argc, char const *argv[])
{
    return 0;
}
" > src/main.c

echo "##
## EPITECH PROJECT, 2022
## -----
## File description:
## Makefile
##

SRC = \$(shell find ./src/ -type f -name '*.c') \\

OBJ = \$(SRC:.c=.o)

NAME = $BIN

all: \$(NAME)

\$(NAME):
	@gcc \$(SRC) -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g

clean:
	@rm -f \$(OBJ)

fclean: clean
	@rm -f \$(NAME)

re: fclean all

.PHONY: all clean fclean re" > Makefile

if [ $# -ge 2 ] && [ $2 == "-math" ]
then
		sed -n 's/ -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g/ -Wall -g3 -lm -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME)/p' Makefile
fi

if [ $# -ge 2 ] && [ $2 == "-ncurses" ]
then
		sed -n 's/ -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g/ -Wall -g3 -lncurses -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME)/p' Makefile
fi

if [ $# -ge 2 ] && [ $2 == "-csfml" ]
then
		sed -n 's/ -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g/ -Wall -g3 -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-audio -lcsfml-network -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME)/p' Makefile
fi