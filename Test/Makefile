##
## EPITECH PROJECT, 2022
## -----
## File description:
## Makefile
##

SRC = $(shell find ./lib/my/ -type f -name '*.c') \

OBJ = $(SRC:.c=.o)

NAME = my_sokoban

all: $(NAME)

$(NAME):
	@gcc $(SRC) -Wall -Wno-unused-variable -Wno-unused-parameter -Wextra -Iinclude -o $(NAME) -g

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
