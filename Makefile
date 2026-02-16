NAME := rubik

RM := rm -rf
CC := gcc
CFLAGS := -Wall -Werror -Wextra

INCLUDE := -I libft/ -I include/
LIBFT := libft/libft.a

SRCS := src/main.c
OBJS := ${SRCS:.c=.o}

all: ${NAME}

${LIBFT}:
	make -C libft

${NAME}: ${OBJS} ${LIBFT}
	${CC} ${CFLAGS} ${INCLUDE} ${OBJS} ${LIBFT} -o ${NAME}

%.o: %.c
	${CC} ${CFLAGS} ${INCLUDE} -c $< -o $@

clean:
	${RM} ${OBJS}
	make -C libft clean

fclean: clean
	${RM} ${NAME}
	make -C libft fclean

re: fclean all

.PHONY: all clean fclean re

