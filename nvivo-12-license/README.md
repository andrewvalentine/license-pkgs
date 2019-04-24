# NVivo 12 license pkg

The contents of this directory will allow you to build a pkg to install a license for NVivo 12.

Adapted from QSR documentation available at:

http://techcenter.qsrinternational.com/desktop/nm12/nm12_mass_deployment.htm

If you need to manage the settings for NVivo 12 in your organization, you may consider using the following Configuration Profile:

https://github.com/andrewvalentine/profiles/blob/master/NVivo12-disable-autoupdates.mobileconfig

## Usage

* Edit the template files
* Build the pkg
* Distribute via your software management tool

### Edit the template files

* `Makefile`

Modify the following variables as required:

```
PKG_TITLE
PKG_VERSION
PKG_ID
SIGNING_ID
```

If you are not signing your pkgs, you should remove the `productsign` invocations from the `pkg` and `product` commands.

* `nvivo-12-activation.xml`

Add your NVivo activation details to this file.

* `postinstall`

Modify the following variable:

```
LICENSE_KEY
```

### Build the pkg

* Run `make`:

```
make pkg
```

* This will produce a pkg at:

`./output/$PKG_TITLE.pkg`
