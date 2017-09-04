CC=gcc
CFLAGS=-O2
DEPS=fargeskrift.h

.PHONY: all clean install

.SUFFIXES:


all: fargedemo fargetest helloincolor

%.o: %.c $(DEPS)
	$(CC) -c $(CFLAGS) $< -o $@ 

fargedemo: fargedemo.o fargeskrift.o
	$(CC) -o fargedemo fargedemo.o fargeskrift.o

fargetest: fargetest.o fargeskrift.o
	$(CC) -o fargetest fargetest.o fargeskrift.o

helloincolor: helloincolor.o
	$(CC) -o helloincolor helloincolor.o

clean:
	rm -f *.o fargedemo fargetest helloincolor

install: fargedemo fargetest helloincolor
	cp fargedemo fargetest helloincolor /usr/local/bin/


