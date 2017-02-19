#!/bin/bash

# Declare your variables here

INSTALL_LOCATION=/Library/Preferences
VERSION=2015
IDENTIFIER=your.org.chemdrawpro15-license
PKGNAME=Your-Org-ChemDrawPro15-license-$VERSION.pkg

# Stop editing

/usr/bin/pkgbuild --root Payload \
    --install-location $INSTALL_LOCATION \
    --version $VERSION \
	--ownership preserve \
    --identifier $IDENTIFIER \
    $PKGNAME

exit 0
