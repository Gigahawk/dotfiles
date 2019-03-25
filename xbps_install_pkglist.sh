#!/bin/bash

pkg_list=$(cat ./xbps_pkglist)
IFS=' ' read -a arr <<< "$pkg_list"

if [ "$1" == "-n" ]; then
  xbps-install -n "${arr[@]}"
else
  sudo xbps-install "${arr[@]}"
fi
