# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-multilib

DESCRIPTION="Machine-readable travel document RFID reader library and utility"
HOMEPAGE="https://github.com/rubund/${PN}"
SRC_URI="https://github.com/rubund/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-libs/libgcrypt:=
	dev-libs/libnfc
"

DEPEND="
	${RDEPEND}
	dev-build/cmake
"

PATCHES=(
	"${FILESDIR}/64_hack.patch"
	"${FILESDIR}/header.patch"
)
