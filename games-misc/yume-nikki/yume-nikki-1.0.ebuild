# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit desktop #xdg-utils

DESCRIPTION="A surrealistic adventure game by pseudonymous Japanese developer Kikiyama"
HOMEPAGE="http://www3.nns.ne.jp/pri/tk-mto/kikiyamaHP.html"
KEYWORDS="~amd64 ~x86"
LICENSE="freedist"
SLOT="0"

RDEPEND="
	games-engines/easyrpg-player
"

SRC_URI="https://my.mixtape.moe/shdzrq.txz -> ${PF}.tar.xz"

S=${WORKDIR}
src_install() {
	dobin "${FILESDIR}"/yume-nikki
	domenu "${FILESDIR}"/yume-nikki.desktop
	doicon "${FILESDIR}"/yume-nikki.png
	insinto /opt
	doins -r yumenikki-en
}
