CC	=gcc -march=i686
CFLAGS	=-O0 -Wall -Werror -g
LDFLAGS	=-g
LDLIBS	=

all: cardlist cardmake

clean:
	${RM} *.o a.out core.*

distclean clobber: clean
	${RM} cardlist cardmake

cardlist: cardcode.i cardlist.c
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ cardlist.c ${LDLIBS}

cardmake: cardcode.i cardmake.c
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ cardmake.c ${LDLIBS}
