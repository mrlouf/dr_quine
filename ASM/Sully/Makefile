NAME	:=	Sully

SRC		:=	Sully.s

OBJ		:=	Sully.o

LDFLAGS	:=	-no-pie
LDLIBS	:=	-lc

all:	$(NAME)

$(NAME):	$(SRC) Makefile
	@nasm -f elf64 $(SRC) -o $(OBJ)
	@gcc $(LDFLAGS) $(OBJ) -o $(NAME) $(LDLIBS)

clean:
	@rm -f $(OBJ)

fclean:	clean
	@rm -f $(NAME)

re:	fclean all

.PHONY:  all clean fclean re