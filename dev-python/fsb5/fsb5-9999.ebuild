# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{8,9,10,11} )

inherit distutils-r1 git-r3

DESCRIPTION="Library and tool to extract audio from FSB5 (FMOD Sample Bank) files"
HOMEPAGE="https://github.com/HearthSim/python-fsb5"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
PROPERTIES="live"

EGIT_REPO_URI="https://github.com/HearthSim/python-fsb5.git"

#RDEPEND=""
