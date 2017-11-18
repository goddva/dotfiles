#!/bin/bash
cd $(dirname $0)
cat pkglist pkglist.aur | xargs yaourt -S --needed
