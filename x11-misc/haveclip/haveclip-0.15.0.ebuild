# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2

DESCRIPTION="Clipboard synchronization tool"
HOMEPAGE="http://www.havefun.cz/projects/haveclip/"
SRC_URI="https://secure.havefun.cz/~aither/pub/releases/haveclip/haveclip-desktop-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="dev-qt/qtcore:4[ssl]
	dev-qt/qtgui:4
	virtual/pkgconfig
	x11-libs/libX11
	x11-proto/xproto
	dev-libs/openssl"

S="${WORKDIR}/haveclip-desktop-${PV}"

IUSE="debug"

DOCS="README.md CHANGELOG LICENSE"
