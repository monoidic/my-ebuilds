# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="a game interpreter to play RPG Maker 2000, 2003 and EasyRPG games"
HOMEPAGE="https://easyrpg.org/"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
SLOT="0"

DEPEND="
	media-libs/liblcf
	media-libs/sdl2-mixer
	x11-libs/pixman
	media-libs/freetype
	media-libs/libvorbis
	media-sound/mpg123
	media-libs/libsndfile
	media-libs/speexdsp
	media-sound/wildmidi
"
SRC_URI="https://easyrpg.org/downloads/player/${PF}.tar.gz"

PATCHES=(
	"${FILESDIR}"/4206ae21a07a9263df74e217c67b6928a4ef775d.patch
)

src_configure() {
	econf --enable-fmmidi=fallback
}
