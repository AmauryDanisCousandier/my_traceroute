SRC = ./src/main.c

OBJ = $(SRC:.c=.o)

CFLAGS += -Werror -Wextra -I./include

NAME = my_traceroute

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ)

all:	$(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: 	fclean all

.PHONY: all clean fclean re
