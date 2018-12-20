# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit cmake-utils eutils git-r3

DESCRIPTION="A convenience API for NFC cards manipulations on top of libnfc"
HOMEPAGE="https://github.com/nfc-tools/libfreefare"
KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-3"
SLOT="0"

EGIT_REPO_URI="https://github.com/nfc-tools/libfreefare.git"

RDEPEND="dev-libs/libnfc
	dev-libs/openssl"
