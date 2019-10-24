# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A fork of the ONScripter engine with added English support"
HOMEPAGE="https://github.com/superzazu/${PN}/"
SRC_URI="https://github.com/superzazu/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="scale"

DEPEND="media-libs/sdl-image[jpeg,png]
	media-libs/sdl-mixer[mp3,vorbis]
	media-libs/sdl-ttf
	media-libs/smpeg
	app-arch/bzip2"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}"/${PN}-20110314-compiler.patch
	"${FILESDIR}"/mystuff.patch
)

src_prepare() {
	default

	if use scale; then
	sed -i \
	    -e 's:-DLINUX:-DLINUX -DRCA_SCALE:' configure \
	    || die "sed failed"
	fi
}

src_configure() {
	./configure --no-werror --prefix="${D}/usr/" || die
}

src_compile() {
	default
	emake tools
}

src_install() {
	for bin in {ns{2,a},sar}{conv,dec,make} nsc{dec,make} batchconv; do
		dobin "${S}"/tools/$bin || die
	done

	default
}
