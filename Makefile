#	@(#)Makefile	8.1 (Berkeley) 6/6/93
# $FreeBSD$

PROG=	w
SRCS=	fmt.c pr_time.c proc_compare.c w.c
MAN=	w.1 uptime.1
DPADD=	${LIBKVM} ${LIBUTIL}
LDADD=	-lkvm -lutil
LDADD+=	-L/usr/local/lib -lGeoIP
LINKS=	${BINDIR}/w ${BINDIR}/uptime
CFLAGS=	-I/usr/local/include

.PATH: ${.CURDIR}/../../bin/ps

.include <bsd.prog.mk>
