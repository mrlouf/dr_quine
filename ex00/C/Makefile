NAME	:=	Colleen

SRC		:=	Colleen.c

all:	$(NAME)

$(NAME):	$(SRC) Makefile
	@cc $(SRC) -fsanitize=address -o $(NAME)

clean:
	@rm $(NAME)

fclean:	clean
	@rm $(NAME)

re:	fclean all

.PHONY:  all clean fclean re