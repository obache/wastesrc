# $NetBSD: Makefile,v 1.19 2021/05/24 19:54:42 wiz Exp $

DISTNAME=	Text-Context-EitherSide-1.4
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	12
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://cpan.uwinnipeg.ca/dist/Text-Context-EitherSide
COMMENT=	Get n words either side of search keywords
LICENSE=	artistic-2.0

PERL5_REQD+=	5.6.0
PERL5_PACKLIST=	auto/Text/Context/EitherSide/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
