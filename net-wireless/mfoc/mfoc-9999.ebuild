# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit eutils git-r3 autotools

DESCRIPTION="Mifare Classic Offline Cracker"
HOMEPAGE="https://github.com/nfc-tools/mfoc"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-2"
SLOT="0"
PROPERTIES="live"
IUSE="-vanilla"

EGIT_REPO_URI="https://github.com/nfc-tools/mfoc.git"

RDEPEND="dev-libs/libnfc"

src_prepare() {
	if ! use vanilla; then
		for f in "${FILESDIR}/"*.patch; do
			# patches from:
			# https://github.com/vk496/mfoc/
			# https://github.com/nfc-tools/mfoc/pull/52 (slightly modified)
			eapply "$f"
		done
	fi
	default
	eautoreconf
}
