#!/bin/bash

sed -i 's/192.168.1.1/192.168.89.1/g' package/base-files/files/bin/config_generate

# 下面两行是MT7990补丁，BPI-R4(MT7988)不需要，已经移除
# perl -0pi -e 's/\r\n/\n/g; s/\r/\n/g' \
#   "$GITHUB_WORKSPACE/patches/filogic/mt76/1005-mt76-makefile-wed-enable-mt7990-firmware.patch"
# (cd package/kernel/mt76 && patch -p1 < "$GITHUB_WORKSPACE/patches/filogic/mt76/1005-mt76-makefile-wed-enable-mt7990-firmware.patch")
