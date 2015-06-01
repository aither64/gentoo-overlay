# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 qt4-r2

DESCRIPTION="Clipboard synchronization tool"
HOMEPAGE="http://www.havefun.cz/projects/haveclip/"
EGIT_REPO_URI="https://git.havefun.cz/haveclip/haveclip-desktop.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="dev-qt/qtcore:4[ssl]
	dev-qt/qtgui:4
	virtual/pkgconfig
	x11-libs/libX11
	x11-proto/xproto"

IUSE="+devel debug"

DOCS="README.md CHANGELOG LICENSE"

src_unpack() {
	if use devel ; then
		EGIT_BRANCH="devel"
	fi

	git-r3_src_unpack
}
