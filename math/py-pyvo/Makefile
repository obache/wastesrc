# $NetBSD: Makefile,v 1.3 2021/06/21 10:08:39 nia Exp $

DISTNAME=	pyvo-1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyvo/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pyvo.readthedocs.io/en/latest/
COMMENT=	Astropy affiliated Python module for accessing virtual observatories
LICENSE=	modified-bsd

BROKEN+=	"Dependency missing from pkgsrc: astropy-helpers"

PYTHON_VERSIONS_INCOMPATIBLE+=	27
PYTHON_VERSIONS_INCOMPATIBLE+=	36

DEPENDS+=	${PYPKGPREFIX}-numpy-[0-9]*:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-requests>=2.25.0:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-astropy>=4.2:../../math/py-astropy
DEPENDS+=	${PYPKGPREFIX}-wheel-[0-9]*:../../devel/py-wheel

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
