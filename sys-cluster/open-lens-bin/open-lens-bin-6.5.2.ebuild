EAPI=7
inherit rpm
SLOT="0"
SRC_URI="https://github.com/MuhammedKalkan/OpenLens/releases/download/v6.5.2-366/OpenLens-6.5.2-366.x86_64.rpm"


S="${WORKDIR}"
src_install() {
   cp -R "${S}/"* "${D}/" || die "Install failed!"
}
