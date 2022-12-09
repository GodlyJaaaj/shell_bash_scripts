#!/bin/bash

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
bash /home/jaaaaj/my_scripts/create_gitignore.sh
mkdir include
mkdir src
echo "/*
** EPITECH PROJECT, 2022
** ----
** File description:
** main.c
*/
" > include/$BIN.h
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

if [ $# -eq 2 ] && [ $2 == "-math" ]
then
		sed -n 's/ -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g/ -Wall -g3 -lm -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME)/p' Makefile
fi

if [ $# -eq 2 ] && [ $2 == "-ncurses" ]
then
		sed -n 's/ -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g/ -Wall -g3 -lncurses -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME)/p' Makefile
fi

if [ $# -eq 2 ] && [ $2 == "-csfml" ]
then
		sed -n 's/ -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME) -g/ -Wall -g3 -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-audio -lcsfml-network -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o \$(NAME)/p' Makefile
fi