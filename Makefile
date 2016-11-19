NAME = getnextline
CFLAGS = -Wall -Wextra -Werror

.PHONY: clean fclean re

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -I libft/includes -o get_next_line.o -c get_next_line.c
	$(CC) $(CFLAGS) -I libft/includes -o main.o -c main.c
	$(CC) -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft

lib:
	cd libft && make re

norme:
	norminette get_next_line.c get_next_line.h

clean:
	rm -f get_next_line.o

fclean: clean
	rm -f $(NAME)

re: fclean lib all
