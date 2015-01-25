# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 cmake-utils user

DESCRIPTION="Wallet for the anonymous cryptocoin Monero"
HOMEPAGE="https://monero.cc"
EGIT_REPO_URI="git://github.com/monero-project/bitmonero.git"
EGIT_COMMIT="v${PV}"
LICENSE="monero"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=net-dns/unbound-1.4.16
	>=dev-libs/libevent-2.0
	>=dev-cpp/gtest-1.5
	>=dev-libs/boost-1.53
	dev-libs/openssl[-bindist]"

RDEPEND="${DEPEND}
	!<dev-libs/boost-1.54"

src_configure() {	
	cmake-utils_src_configure
}

src_install() {    
	BINPATH="${WORKDIR}/${P}_build/bin"
	dobin ${BINPATH}/bitmonerod
	dobin ${BINPATH}/connectivity_tool
	dobin ${BINPATH}/simpleminer
	dobin ${BINPATH}/simplewallet
	newconfd ${FILESDIR}/bitmonerod.conf.d bitmonerod
	newinitd ${FILESDIR}/bitmonerod.init.d bitmonerod
}

pkg_postinst() {
	enewgroup monero
	enewuser monero -1 -1 /var/lib/monero "monero"
}
