# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gojeda <gojeda@student.42madrid.com>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/11 16:33:59 by gojeda            #+#    #+#              #
#    Updated: 2025/04/11 16:34:01 by gojeda           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ft_atoi.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_itoa.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c
SRC_BONUS = ft_lstadd_back.c \
			ft_lstadd_front.c \
			ft_lstclear.c \
			ft_lstdelone.c \
			ft_lstiter.c \
			ft_lstlast.c \
			ft_lstmap.c \
			ft_lstmap.c \
			ft_lstnew.c \
			ft_lstsize.c
CFLAGS = -Wall -Werror -Wextra
OBJ = ${SRC:.c=.o}
B_OBJ = ${SRC_BONUS:.c=.o}
RM = rm -f
AR = @ar rcs

all: ${NAME}

$(NAME): ${OBJ}
	${AR} ${NAME} ${OBJ}

bonus:	${OBJ} ${B_OBJ}
	${AR} ${NAME} ${OBJ} ${B_OBJ}

clean:
	@${RM} ${OBJ} ${B_OBJ}

fclean:	clean
	@${RM} ${NAME}

re:	fclean all

.PHONY: all clean fclean re bonus