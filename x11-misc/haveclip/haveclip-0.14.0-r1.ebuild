# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2

DESCRIPTION="Clipboard synchronization tool"
HOMEPAGE="http://www.havefun.cz/projects/haveclip/"
SRC_URI="mirror://sourceforge/haveclip/${PV}/haveclip-desktop-${PV}-src.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="dev-qt/qtcore:4[ssl]
	dev-qt/qtgui:4
	app-crypt/qca
	app-crypt/qca-ossl
	virtual/pkgconfig
	x11-libs/libX11
	x11-proto/xproto"

S="${WORKDIR}/haveclip-desktop-${PV}-src"

PATCHES=(
	"${FILESDIR}/crypto.patch"
)

IUSE="debug"

DOCS="README.md CHANGELOG LICENSE"
