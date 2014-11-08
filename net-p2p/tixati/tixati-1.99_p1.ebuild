# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="5"
inherit eutils

#WWWVER=$(echo ${P} | sed -e 's/_p/-/')

DESCRIPTION="Advanced and flexible BitTorrent client"
HOMEPAGE="http://www.tixati.com/"
WWWVER="tixati-1.99-1"
SRC_URI="http://www.tixati.com/download/${WWWVER}.i686.manualinstall.tar.gz"

LICENSE="EULA"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RESTRICT="strip"

RDEPEND=">=x11-libs/gtk+-2:2"

S="${WORKDIR}/${WWWVER}.i686.manualinstall"

src_install() {
	exeinto /usr/bin
	doexe ${S}/tixati
	insinto /usr/share/icons/hicolor/48x48/apps
	doins ${S}/tixati.png
	insinto /usr/share/pixmaps
	doins ${S}/tixati.png
	insinto /usr/share/applications
	doins ${S}/tixati.desktop
}
