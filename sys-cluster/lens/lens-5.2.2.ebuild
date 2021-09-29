EAPI=7
inherit rpm
SLOT="0"
SRC_URI="https://api.k8slens.dev/binaries/Lens-5.2.2-latest.20210918.1.x86_64.rpm"


S="${WORKDIR}"
src_install() {
   cp -R "${S}/"* "${D}/" || die "Install failed!"
}
