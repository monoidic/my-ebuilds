# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1

MYPV="4.0.0beta0"
MYP="${PN}-${MYPV}"
DESCRIPTION="CTF framework and exploit development library"
HOMEPAGE="https://github.com/Gallopsled/pwntools"
SRC_URI="https://github.com/Gallopsled/pwntools/archive/${MYPV}.tar.gz -> ${MYP}.tar.gz"

#WTF? Most is under an MIT license, but a few pieces are under GPL or a BSD 2-clause licence
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/mako[${PYTHON_USEDEP}]
	dev-python/pyelftools[${PYTHON_USEDEP}]
	dev-libs/capstone[python,${PYTHON_USEDEP}]
	!!dev-libs/capstone-bindings
	app-exploits/ROPgadget[${PYTHON_USEDEP}]
	dev-python/pyserial[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/PySocks[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	>=dev-python/intervaltree-3.0[${PYTHON_USEDEP}]
	>=dev-python/sortedcontainers-2.0.0[${PYTHON_USEDEP}]
	dev-util/unicorn[python,unicorn_targets_x86(+),${PYTHON_USEDEP}]
	!app-admin/checksec
	dev-python/tox[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

#PATCHES=(
#	"${FILESDIR}/${P}_do_not_mess_with_docs.patch"
#	"${FILESDIR}/${P}_update_deps.patch"
#)

S="${WORKDIR}/${MYP}"
