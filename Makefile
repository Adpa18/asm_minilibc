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

LDFLAGS	=	-shared

SRCDIR	=	src/

OBJDIR	=	obj/

SRC		=	memcpy.S		\
			memmove.S		\
			memset.S		\
			rindex.S		\
			strcasecmp.S	\
			strchr.S		\
			strcmp.S		\
			strcspn.S		\
			strlen.S		\
			strncmp.S		\
			strpbrk.S		\
			strstr.S		\


			# strcat.S \
			# strdup.S \
			# strncat.S \
			# strcpy.S \
			# strncpy.S \
			# memchr.S \
			# fabs.S \
			# memcmp.S

OBJ		=	$(patsubst %.S,${OBJDIR}%.o, $(SRC))

$(OBJDIR)%.o	:	$(patsubst %.S,${SRCDIR}%.S, %.S)
	$(ASM) $(ASFLAGS) $< -o $@

$(NAME)	: $(OBJ)
	$(CC) $(OBJ) -o $(NAME) $(LDFLAGS)

all		: $(NAME)

clean 	:
	$(RM) $(OBJ)
	mkdir -p $(OBJDIR)

fclean	: clean
	$(RM) $(NAME)

re 		: fclean all

.PHONY	: all clean fclean re
