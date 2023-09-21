# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
DESCRIPTION="DePbo tools for Linux consists of a shared library and a set of command line tools"
HOMEPAGE="https://community.bistudio.com/wiki/Mikero_Tools"

P_FILE="${P}-linux-x86_64.tgz"
SRC_URI="
	http://mikero.bytex.digital/api/download?filename=${P_FILE} -> ${P_FILE}
"
RESTRICT="mirror bindist"
KEYWORDS="amd64"
SLOT="0"

RDEPEND="
	dev-libs/lzo
	media-libs/libvorbis
	media-libs/libogg
"

src_install() {
	dodoc -r doc/* *.txt
	into /opt/depbo-tools/
	dobin bin/*
	dolib.so lib/*
	doenvd ${FILESDIR}/99-depbo-tools
}

