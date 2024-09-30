GENERATES = liboutput_static.a liboutput.so prog prog-a prog-so
TRASH = *.o *~ o.*
CFLAGS = -Wall -Wextra -Wpedantic -fPIC


.PHONY: all clean distclean allclean
.SECONDARY: liboutput.a(fun.o const.o)

all: prog prog-a prog-so

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

liboutput_static.a: liboutput_static.a(fun.o const.o)

liboutput.so: fun.o const.o
	$(CC) $(CFLAGS) -shared -o $@ $^

prog: prog.o const.o fun.o

prog-a: prog.o liboutput_static.a
	cc $^ -o $@

prog-so: prog.o liboutput.so
	cc $^ -o $@

# README: prog
# 	./$< 2> $@

clean:
	rm -f $(TRASH)

distclean: clean
	rm -rf $(GENERATES)

allclean: clean distclean
