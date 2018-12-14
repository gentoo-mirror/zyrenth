# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=(python3_6)

inherit distutils-r1

DESCRIPTION="Discord Rich Presence based on mpris2 media players"
HOMEPAGE="https://github.com/FichteFoll/discordrp-mpris"
# Source isn't on pypi...
SRC_URI="https://github.com/FichteFoll/discordrp-mpris/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	${PYTHON_DEPS}
	dev-python/DBussy[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}
"