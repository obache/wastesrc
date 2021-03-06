# $NetBSD: Makefile,v 1.45 2018/01/07 22:36:54 rillig Exp $

DISTNAME=		geomview-1.8.1
PKGREVISION=		8
CATEGORIES=		graphics math
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=geomview/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.geomview.org/
COMMENT=		Interactive geometry viewing program
LICENSE=		gnu-lgpl-v2

MAKE_JOBS_SAFE=		no

USE_TOOLS+=		lex
USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--without-xforms
CONFIGURE_ARGS+=	--with-opengl=${BUILDLINK_PREFIX.Mesa}
CONFIGURE_ARGS+=	--with-motif=${MOTIFBASE}
CPPFLAGS+=		-Dunix -Dalloca=__builtin_alloca
INFO_FILES=		yes

INSTALLATION_DIRS=	share/doc/geomview share/examples/geomview \
			share/doc/geomview/pix

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} != "Linux"
CONFIGURE_ARGS+=	--enable-fstropen-1
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/geomview.pdf			\
	    ${DESTDIR}${PREFIX}/share/doc/geomview
	${INSTALL_DATA} ${WRKSRC}/doc/example*				\
	    ${DESTDIR}${PREFIX}/share/examples/geomview
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.html 			\
	    ${DESTDIR}${PREFIX}/share/doc/geomview
	${INSTALL_DATA} ${WRKSRC}/doc/html/pix/*			\
	    ${DESTDIR}${PREFIX}/share/doc/geomview/pix

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../mk/motif.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
