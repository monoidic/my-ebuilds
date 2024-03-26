# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit desktop

DESCRIPTION="A Worms-like local multiplayer game"
HOMEPAGE="https://www.liero.be/"
KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-2.1"
SLOT="0"

DEPEND="
	dev-libs/libconfig[cxx(+)]
"

RDEPEND="
	${DEPEND}
	media-sound/sox
	dev-libs/boost:=
	media-libs/libsdl
	media-libs/sdl-mixer
"

SRC_URI="https://launchpad.net/${PN}/trunk/${PV}/+download/${P}.tar.xz"
