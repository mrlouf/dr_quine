NAME	:=	Colleen

SRC		:=	Colleen.s

OBJ		:=	Colleen.o

all:	$(NAME)

$(NAME):	$(SRC) Makefile
	@nasm -f elf64 $(SRC) -o $(OBJ)
	@gcc -no-pie $(OBJ) -fsanitize=address -o $(NAME)

clean:
	@rm $(OBJ)

fclean:	clean
	@rm $(NAME)

re:	fclean all

.PHONY:  all clean fclean re