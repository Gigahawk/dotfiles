#!/bin/bash
echo "Caching locally installed packages"
xpkg > xbps_pkglist

echo "Checking if package list is valid"
./xbps_install_pkglist.sh -n

if [ "$?" -eq 2 ]; then
  echo "Error, invalid packages found, please remove them before commiting"
else
  echo "No errors found, adding new package list to stage"
  git add xbps_pkglist
fi
