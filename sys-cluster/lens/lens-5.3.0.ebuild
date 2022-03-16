EAPI=7
inherit rpm
SLOT="0"
SRC_URI="https://lens-binaries.s3-eu-west-1.amazonaws.com/ide/Lens-5.3.0-latest.20211125.2.x86_64.rpm"


S="${WORKDIR}"
src_install() {
   cp -R "${S}/"* "${D}/" || die "Install failed!"
}
