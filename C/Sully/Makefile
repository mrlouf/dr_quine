NAME	:=	Sully

SRC		:=	Sully.c

all:	$(NAME)

$(NAME):	$(SRC) Makefile
	@cc $(SRC) -o $(NAME)

clean:
	@rm $(NAME)

fclean:	clean
	@rm Sully_*

re:	fclean all

.PHONY:  all clean fclean re