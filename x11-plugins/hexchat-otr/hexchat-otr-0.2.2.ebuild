# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
inherit git-r3 autotools

DESCRIPTION="OTR plugin for the HexChat IRC client"
HOMEPAGE="https://github.com/TingPing/hexchat-otr/"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-2"
SLOT="0"

DEPEND="
	net-irc/hexchat
	net-libs/libotr
	dev-libs/libgcrypt
"

EGIT_REPO_URI="https://github.com/TingPing/${PN}.git"
EGIT_COMMIT="0.2.2"

src_prepare() {
	default
	eautoreconf
}
