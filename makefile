LIBS = `pkg-config --libs gtk+-3.0`

CFLAGS = -std=c99 `pkg-config --cflags gtk+-3.0`

all: tek4010

tek4010: src/main.c src/main.h src/tube.c src/tube.h src/tek4010.c src/ards.c
	$(CC) -o tek4010 src/main.c src/tube.c src/tek4010.c src/ards.c $(LIBS) $(CFLAGS)

install: tek4010
	./install

clean: tek4010
	-rm -f tek4010
