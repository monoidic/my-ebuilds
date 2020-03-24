# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="a library to handle RPG Maker 2000 and 2003 game data"
HOMEPAGE="https://easyrpg.org/"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SLOT="0"

DEPEND="
	sys-devel/gcc
	dev-libs/icu:=
	dev-libs/expat
"
SRC_URI="https://easyrpg.org/downloads/player/${PF}.tar.gz"

src_configure() {
	econf \
		--enable-shared \
		--disable-static
}
