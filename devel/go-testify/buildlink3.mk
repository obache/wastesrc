# $NetBSD: buildlink3.mk,v 1.2 2018/01/07 13:04:02 rillig Exp $

BUILDLINK_TREE+=	go-testify

.if !defined(GO_TESTIFY_BUILDLINK3_MK)
GO_TESTIFY_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-testify=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-testify?=	build

BUILDLINK_API_DEPENDS.go-testify+=	go-testify>=1.1.3
BUILDLINK_PKGSRCDIR.go-testify?=	../../devel/go-testify
.endif	# GO_TESTIFY_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-testify
