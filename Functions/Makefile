##
## EPITECH PROJECT, 2020
## ASM
## File description:
## Makefile
##

NAME	=	libasm.so

SRC	=	$(wildcard *.asm)

OBJ	=	$(SRC:.asm=.o)

all: $(NAME) clean2

$(NAME): $(SRC) $(OBJ)
	ld $(OBJ) -shared -o $(NAME)

%.o: %.asm
	nasm -f elf64 $< -o $@

clean clean1 clean2:
	$(shell find . -name "*.o" -delete)
	$(shell find . -name "*~" -delete)
	$(shell find . -name "#*#" -delete)
	$(shell find . -name "vgcore.*" -delete)

fclean: clean1
	rm -f $(NAME)

re: fclean all

.PHONY: all clean1 clean2 fclean re
