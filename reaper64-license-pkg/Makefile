OUTPUTDIR=output
OWNERSHIP="recommended"
INSTALLLOCATION="/"
PKGROOT=pkgroot
PKGTITLE="REAPER64-license"
PKGVERSION="1.0"
PKGID=your.org.REAPER64-license
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
	pkgbuild --root ${PKGROOT} --install-location ${INSTALLLOCATION} --identifier ${PKGID} --version ${PKGVERSION} --ownership ${OWNERSHIP} ${OUTPUTDIR}/${PKGTITLE}.pkg
	productsign --sign ${SIGNINGID} ${OUTPUTDIR}/${PKGTITLE}.pkg ${OUTPUTDIR}/${PKGTITLE}-signed.pkg
	rm -f ${OUTPUTDIR}/${PKGTITLE}.pkg

##  product - Create a product using pkgbuild and productbuild
product: clean
	pkgbuild --root ${PKGROOT} --install-location ${INSTALLLOCATION} --identifier ${PKGID} --version ${PKGVERSION} --ownership ${OWNERSHIP} ${OUTPUTDIR}/${PKGTITLE}.pkg
	productbuild --identifier ${PKGID} --version ${PKGVERSION} --package ${OUTPUTDIR}/${PKGTITLE}.pkg ${OUTPUTDIR}/${PKGTITLE}-dist.pkg
	productsign --sign ${SIGNINGID} ${OUTPUTDIR}/${PKGTITLE}-dist.pkg ${OUTPUTDIR}/${PKGTITLE}-dist-signed.pkg
