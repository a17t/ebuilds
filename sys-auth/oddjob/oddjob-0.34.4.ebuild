# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6

inherit rpm

DESCRIPTION="A classical example to use when starting on something new"
HOMEPAGE="http://google.com"
SRC_URI="https://download.fedoraproject.org/pub/fedora/linux/development/rawhide/Everything/source/tree/Packages/o/oddjob-0.34.4-5.fc29.src.rpm"

LICENSE="UNKNOWN"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_unpack () {
	rpm_src_unpack ${A}
	cd "${S}"
}

