#!/usr/bin/python

import os.path
from shutil import copy

# Set home, license and user variables

licenseFile = "/Library/Management/reaper64/reaper-license.rk"

home = os.path.expanduser("~")
userprefDir = os.path.join(home, "Library/Application Support/REAPER")
userLicense = os.path.join(userprefDir, "reaper-license.rk")

# Check for REAPER preferences directory

if not os.path.exists(userprefDir):
    os.mkdir(userprefDir)
    print("REAPER directory " , userprefDir , " created." )
else:
    print("REAPER directory " , userprefDir , " already exists." )

# Ensure license file is present in REAPER preferences directory

print("Ensuring current license file is present in " , userprefDir )
copy(licenseFile,userprefDir)

raise SystemExit()
