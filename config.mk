# Grani version
VERSION = 0.1

# Customize below to fit your system

# paths
PREFIX = /usr/bin/local
MANPREFIX = ${PREFIX}/share/man

GTKINC=$(shell pkg-config --cflags gtk+-2.0 webkit-1.0)
GTKLIB=$(shell pkg-config --libs gtk+-2.0 webkit-1.0)


# includes and libs
INCS = -I. -I/usr/include ${GTKINC}
LIBS = -L/usr/lib -lc ${GTKLIB} -lgthread-2.0 -lX11

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS} -g
LDFLAGS = -g ${LIBS}

# compiler and linker
CC = cc
