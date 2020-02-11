# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils desktop git-r3 java-pkg-2 java-ant-2

MYVER="version${PV}"
DESCRIPTION="Decompiler and editor of Flash SWF files"
HOMEPAGE="https://www.free-decompiler.com/flash/" #https://github.com/jindrapetrik/jpexs-decompiler
RESTRICT="test"
EGIT_REPO_URI="https://github.com/jindrapetrik/${PN}.git"
EGIT_COMMIT="${MYVER}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/jdk:1.8"

#EANT_BUILD_TARGET="clean build release"

src_prepare() {
	default
	(
		cd "${S}"
		"${FILESDIR}"/put_version_into_build_xml.py || die
	)
}

src_compile() {
	ant build
}

src_install() {
	java-pkg_dojar dist/ffdec.jar
	java-pkg_dojar lib/*.jar

	java-pkg_dolauncher "${PN}" --main com.jpexs.decompiler.flash.gui.Main

	newicon resources/icon.png "${PN}".png
	make_desktop_entry "${PN}" FFDec "${PN}" 'Development;Utility;WebDevelopment'
}
