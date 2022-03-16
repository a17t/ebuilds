EAPI=7
 

inherit ninja-utils git-r3

DESCRIPTION="GitAhead is a graphical Git client designed to help you understand and manage your source code history. It's available as a pre-built binary for Windows, Linux, and macOS, or can be built from source by following the directions below."
HOMEPAGE="https://github.com/gitahead/gitahead"
EGIT_REPO_URI="https://github.com/gitahead/gitahead.git"
EGIT_SUBMODULES=( '*')
EGIT_COMMIT="v2.6.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
 
DEPEND="dev-libs/openssl"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	cd build/release
        eninja
}

src_prepare() {
	cd dep/openssl/openssl
	./config -fPIC
	make
	
	eapply_user
}

src_configure() {
	mkdir -p build/release
	cd build/release
	cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ../..
}

src_install() {
	cd build/release
	eninja install
}

