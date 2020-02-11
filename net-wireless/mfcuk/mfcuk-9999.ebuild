# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

#inherit autotools
inherit git-r3 autotools

DESCRIPTION="MiFare Classic Universal toolKit"
HOMEPAGE="https://github.com/nfc-tools/mfcuk"
#SRC_URI="ftp://foo.example.org/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
PROPERTIES="live"
KEYWORDS="~amd64"

EGIT_REPO_URI="https://github.com/nfc-tools/mfcuk.git"
#RDEPEND=""

#PATCHES=(
#	"${FILESDIR}/idk.patch"
#)

src_prepare() {
	default
	eautoreconf
}
