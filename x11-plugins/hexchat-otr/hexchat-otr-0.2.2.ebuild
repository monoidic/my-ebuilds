# Copyright 1999-2018 Gentoo Foundation
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

EGIT_REPO_URI="https://github.com/TingPing/hexchat-otr.git"
EGIT_COMMIT="c27d6de85104216032a81e1564a85dc0d1bf0c99"

src_prepare() {
	default
	eautoreconf
}
