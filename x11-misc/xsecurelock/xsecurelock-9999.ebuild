# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools git-r3

DESCRIPTION="X11 screen lock utility with security in mind"
HOMEPAGE="https://github.com/google/xsecurelock"
EGIT_REPO_URI="https://github.com/google/${PN}"
EGIT_BOOTSTRAP=""
KEYWORDS="~amd64 ~x86"
#SRC_URI="https://github.com/google/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

PROPERTIES="live"
SLOT="0"
LICENSE="Apache-2.0"
RDEPEND="x11-libs/libX11
	x11-libs/libXScrnSaver
	x11-libs/libXxf86misc
"
DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
	default
}

src_configure() {
	econf \
		--with-pam-service-name=system-auth \
		--with-mpv=/usr/bin/mpv \
		--with-xss \
		--with-xf86misc \
		--with-xft \
		--with-xrandr \
		--with-xfixes
#		--with-xscreensaver
#		--with-pamtester
#	default
}
