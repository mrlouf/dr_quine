NAME	:=	Colleen

SRC		:=	Colleen.c

all:	$(NAME)

$(NAME):	$(SRC) Makefile
	@cc $(SRC) -o $(NAME)

clean:
	@rm $(NAME)

fclean:	clean
	@rm $(NAME)

re:	fclean all

.PHONY:  all clean fclean re