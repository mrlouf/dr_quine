NAME	:=	Grace

SRC		:=	Grace.c

all:	$(NAME)

$(NAME):	$(SRC) Makefile
	@gcc $(SRC) -o $(NAME)

clean:
	@rm $(NAME)

fclean:	clean
	@rm Grace.o
	@rm Grace_kid.c

re:	fclean all

.PHONY:  all clean fclean re