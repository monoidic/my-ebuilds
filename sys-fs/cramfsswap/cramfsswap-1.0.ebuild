# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

commit="1ab09422186fb47e3586593c5a346c941653014b"
name="firmware-mod-kit"

DESCRIPTION="swap endianess of a cramfs filesystem"
HOMEPAGE="https://github.com/mirror/${name}"
SRC_URI="https://github.com/mirror/${name}/archive/${commit}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${name}-${commit}/src/${PN}"

src_prepare() {
	sed -i 's/cramfsswap strip/cramfsswap/' Makefile || die
	default
}

src_install() {
	mkdir -p "${D}/usr/bin" || die
	doman "${PN}.1"
	default
}
