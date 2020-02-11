# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit cmake-utils eutils git-r3 toolchain-funcs udev

DESCRIPTION="Near Field Communications (NFC) library"
HOMEPAGE="http://www.libnfc.org/"

KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-3"
SLOT="0"
PROPERTIES="live"

IUSE="doc pcsc-lite readline static-libs usb"

EGIT_REPO_URI="https://github.com/nfc-tools/libnfc.git"

RDEPEND="pcsc-lite? ( sys-apps/pcsc-lite )
	readline? ( sys-libs/readline:0 )
	usb? ( virtual/libusb:0 )"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )"

src_configure() {
	local drivers="arygon,pn532_uart,pn532_spi,pn532_i2c,acr122s"
	use pcsc-lite && drivers+=",acr122_pcsc"
	use usb && drivers+=",pn53x_usb,acr122_usb"
	cmake-utils_src_configure \
		--with-drivers="${drivers}" \
		$(use_enable doc) \
		$(use_with readline) \
		$(use_enable static-libs static)
}

src_compile() {
	cmake-utils_src_compile
	use doc && doxygen
}

src_install() {
	cmake-utils_src_install
	udev_dorules contrib/udev/93-pn53x.rules
	use static-libs || find "${ED}" -name 'lib*.la' -delete
	use doc && dohtml "${S}"/doc/html/*
}
