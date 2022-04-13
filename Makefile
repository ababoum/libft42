# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mababou <mababou@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/13 20:26:19 by mababou           #+#    #+#              #
#    Updated: 2022/04/13 20:43:12 by mababou          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_atoi.c ft_bzero.c ft_calloc.c \
		  ft_isalnum.c ft_isalpha.c ft_isascii.c \
		  ft_isdigit.c ft_isprint.c ft_itoa.c \
		  ft_memchr.c ft_memcmp.c ft_memcpy.c \
		  ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
		  ft_putnbr_fd.c ft_putstr_fd.c ft_split.c \
		  ft_strchr.c ft_strdup.c ft_striteri.c \
		  ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
		  ft_strlen.c ft_strmapi.c ft_strncmp.c \
		  ft_strnstr.c ft_strrchr.c ft_strtrim.c \
		  ft_substr.c ft_tolower.c ft_toupper.c \
		  ft_memmove.c ft_lstlast.c

BONUS   = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
		  ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
		  ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS	= ${SRCS:.c=.o}

OBJB	= ${BONUS:.c=.o}

NAME	= libft.a

CC		= gcc

AR		= ar rc

RM		= rm -f

CFLAGS	= -Wall -Werror -Wextra -g

.c.o:		${CC} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}

all:		${NAME}

bonus:		${OBJB} ${OBJS}
			${AR} ${NAME} ${OBJS} ${OBJB}

clean:		
			${RM} ${OBJS} ${OBJB}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all fclean clean re bonus
