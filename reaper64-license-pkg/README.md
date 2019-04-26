# REAPER64 license pkg

The contents of this directory will allow you to build a pkg to install a license for REAPER64.

## Pre-requisites

Successful usage of the resulting license pkg requires [Outset](https://github.com/chilcote/outset).

## Usage

* Install and license REAPER64 on a test machine.
* Copy this file:

```
/Users/your-username/Library/Application Support/REAPER/reaper-license.rk
```

to this directory in this repository:

```
./pkgroot/Library/Management/reaper64
```

* Modify the `Makefile` as required. I recommend reviewing these variables:

* `PKGTITLE`
* `PKGVERSION`
* `PKGID`
* `SIGNINGID` - Only required if you are using a Developer ID to sign your pkgs. If you do not have a Developer ID, you will need to remove the `productsign` invocations from the `pkg` and `product` commands.

* Build the pkg:

```
make pkg
```

* The resulting pkg will be delivered to `./output/$PKGTITLE.pkg`. You should then distribute this via your software deployment tool.
