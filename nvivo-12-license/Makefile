INSTALL_LOCATION="/Library/Management/NVivo12"
OUTPUT_DIR=output
OWNERSHIP="recommended"
PKG_ROOT="pkgroot"
PKG_TITLE="nvivo-12-license"
PKG_VERSION="1.0"
PKG_ID=your.org.${PKG_TITLE}
SCRIPTS=scripts
SIGNINGID="Your Signing ID"

projectfolder=$(dirname "$0")

#################################################

##Help - Show this help menu
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##  clean - Clean up temporary working directories
clean:
	rm -f ./*.pkg
	rm -f output/*.pkg

##  pkg - Create a package using pkgbuild
pkg: clean
	pkgbuild --root ${PKG_ROOT} --identifier ${PKG_ID} --install-location ${INSTALL_LOCATION} --version ${PKG_VERSION} --ownership ${OWNERSHIP} --scripts ${SCRIPTS} ${OUTPUT_DIR}/${PKG_TITLE}.pkg
	productsign --sign ${SIGNINGID} ${OUTPUT_DIR}/${PKG_TITLE}.pkg ${OUTPUT_DIR}/${PKG_TITLE}-signed.pkg
	rm -f ${OUTPUT_DIR}/${PKG_TITLE}.pkg

##  product - Create a product using pkgbuild and productbuild
product: clean
	pkgbuild --root ${PKG_ROOT} --identifier ${PKG_ID} --version ${PKG_VERSION} --ownership ${OWNERSHIP} --scripts ${SCRIPTS} ${OUTPUT_DIR}/${PKG_TITLE}.pkg
	productbuild --identifier ${PKG_ID} --version ${PKG_VERSION} --package ${OUTPUT_DIR}/${PKG_TITLE}.pkg ${OUTPUT_DIR}/${PKG_TITLE}-dist.pkg
	productsign --sign ${SIGNINGID} ${OUTPUT_DIR}/${PKG_TITLE}-dist.pkg ${OUTPUT_DIR}/${PKG_TITLE}-dist-signed.pkg
	rm -f ${OUTPUT_DIR}/${PKG_TITLE}.pkg
