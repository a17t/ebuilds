EAPI=7
inherit rpm
SLOT="0"
SRC_URI="https://downloads.k8slens.dev/ide/Lens-2022.12.221341-latest.x86_64.rpm"


S="${WORKDIR}"
src_install() {
   cp -R "${S}/"* "${D}/" || die "Install failed!"
}
