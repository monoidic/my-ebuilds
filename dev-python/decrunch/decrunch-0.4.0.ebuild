# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{8,9} )

inherit distutils-r1

DESCRIPTION="Python wrapper around Crunch DXTc decompressor"
HOMEPAGE="https://github.com/HearthSim/${PN}"
LICENSE="ZLIB"
SLOT="0"
SRC_URI="https://github.com/HearthSim/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/precision.patch"
)

#RDEPEND="
#	dev-python/lz4[${PYTHON_USEDEP}]
#	dev-python/fsb5[${PYTHON_USEDEP}]
#"
