#!/usr/bin/env bash
set -e

# XG-040G-MD bootstrap target: MTK Filogic (to be refined with exact DTS/profile patch)
cat >> .config <<'EOF'
CONFIG_TARGET_mediatek=y
CONFIG_TARGET_mediatek_filogic=y
CONFIG_TARGET_mediatek_filogic_DEVICE_bananapi_bpi-r3-mini=y

# Core Luci
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-ssl=y

# Requested plugins (best-effort; missing ones are dropped by defconfig)
CONFIG_PACKAGE_tailscale=y
CONFIG_PACKAGE_luci-app-tailscale=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-openlist=y
CONFIG_PACKAGE_luci-app-rtp2httpd=y
CONFIG_PACKAGE_luci-app-eqosplus=y

# Storage-friendly defaults
CONFIG_TARGET_ROOTFS_PARTSIZE=256
CONFIG_PACKAGE_luci-i18n-base-zh-cn=y
EOF
