NAME = color
PREFIX = /usr
CFLAGS = -std=c99 -pedantic -O2 -fstack-protector-strong -pipe
INC = -I/usr/X11R6/include -I/usr/include
LIBS = -L/usr/X11R6/lib -L/usr/lib -lX11
CC = cc

$(NAME): 
	$(CC) $(INC) $(CFLAGS) $(NAME).c $(LIBS) -o $(NAME)

install:
	install -D -m 0755 $(NAME) $(PREFIX)/bin/$(NAME)

uninstall:
	rm $(PREFIX)/bin/$(NAME)

clean:
	rm $(NAME) 2>/dev/null ||:
