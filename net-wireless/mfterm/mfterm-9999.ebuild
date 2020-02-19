# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils git-r3 autotools

DESCRIPTION="Terminal for working with Mifare Classic 1-4k Tags"
HOMEPAGE="https://github.com/4ZM/mfterm"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
SLOT="0"
PROPERTIES="live"

EGIT_REPO_URI="${HOMEPAGE}.git"

RDEPEND="dev-libs/libnfc"

PATCHES=(
	"${FILESDIR}/strncpy_errors.patch"
)

src_prepare() {
	default
	eautoreconf
}

src_install() {
	docompress -x "${EPREFIX}/usr/share/doc/${PF}/dictionary.txt"
	dodoc "${S}/dictionary.txt"
	default
}
