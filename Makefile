##
## Makefile for asm_minilibc
##
## Made by	Adrien WERY
## Login	wery_a
##
## Started on	Tue Mar 01 23:38:13 2016 Adrien WERY
## Last update	Tue Mar 01 23:38:13 2016 Adrien WERY
##

ASM		=	nasm

CC		=	gcc

RM		=	rm -rf

NAME	=	libasm.so

ASFLAGS	=	-f elf64

LDFLAGS	=	-rdynamic -shared

SRCDIR	=	src/

CFLAGS	=	-fPIC

SRC		=	$(SRCDIR)memcpy.S		\
			$(SRCDIR)memmove.S		\
			$(SRCDIR)memset.S		\
			$(SRCDIR)rindex.S		\
			$(SRCDIR)strcasecmp.S	\
			$(SRCDIR)strchr.S		\
			$(SRCDIR)strcmp.S		\
			$(SRCDIR)strcspn.S		\
			$(SRCDIR)strlen.S		\
			$(SRCDIR)strncmp.S		\
			$(SRCDIR)strpbrk.S		\
			$(SRCDIR)strstr.S		\

OBJ		=	$(SRC:.S=.o)

$(NAME)	: $(OBJ)
	$(CC) $(OBJ) -o $(NAME) $(LDFLAGS)

%.o	:	%.S
	$(ASM) $(ASFLAGS) $< -o $@

all		: $(NAME)

clean 	:
	$(RM) $(OBJ)

fclean	: clean
	$(RM) $(NAME)

re 		: fclean all

.PHONY	: all clean fclean re
