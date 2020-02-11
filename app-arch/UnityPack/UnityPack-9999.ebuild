# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} )

inherit distutils-r1 git-r3

DESCRIPTION="Python deserialization library for Unity3D Asset format"
HOMEPAGE="https://github.com/HearthSim/UnityPack"
LICENSE="MIT"
SLOT="0"
#SRC_URI="https://github.com/HearthSim/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="https://github.com/HearthSim/${PN}.git"
PROPERTIES="live"

KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/ETC2.patch"
	"${FILESDIR}/mscript.patch"
)

RDEPEND="
	dev-python/lz4[${PYTHON_USEDEP}]
	dev-python/fsb5[${PYTHON_USEDEP}]
	dev-python/decrunch[${PYTHON_USEDEP}]
"
