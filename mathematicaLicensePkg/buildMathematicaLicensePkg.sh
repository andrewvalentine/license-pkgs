#!/bin/bash

# Declare your variables here

VERSION=2016
IDENTIFIER=your.org.mathematica-license
PKGNAME=Your-Org-Mathematica-license-$VERSION.pkg

# Stop editing

/usr/bin/pkgbuild --root Payload \
    --install-location /Library/Mathematica/Licensing \
    --version $VERSION \
    --identifier $IDENTIFIER \
    $PKGNAME

exit 0
