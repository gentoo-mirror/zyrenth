# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Logitech Keyboard per-key lighting control -- G410, G610, G810, G910"
HOMEPAGE="https://github.com/spectras/keyleds"

SRC_URI="https://github.com/spectras/keyleds/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="python"

RDEPEND="
	dev-lang/luajit
	dev-libs/libyaml
	dev-libs/libxml2
	dev-qt/qtcore:5
	virtual/libudev
	x11-libs/libXi
	x11-libs/libX11
	python? (
		dev-lang/python
		dev-python/cython
	)
"
DEPEND="
	${RDEPEND}
"
