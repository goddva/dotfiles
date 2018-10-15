#!/usr/bin/env bash
#
# Copy ucode to EFI directory
#

ESP_DIR="/boot/efi"

[[ -e /boot/intel-ucode.img ]] && cp -af /boot/intel-ucode.img "$ESP_DIR/"

exit 0
