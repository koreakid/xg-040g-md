#!/usr/bin/env bash
set -e

# XG-040G-MD target: Airoha AN7581 (U-Boot flashing workflow)
cat >> .config <<'EOF'
CONFIG_TARGET_airoha=y
CONFIG_TARGET_airoha_an7581=y
CONFIG_TARGET_airoha_an7581_DEVICE_bell_xg-040g-md=y

# Core Luci
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-ssl=y

# Requested plugins (best-effort; missing ones are dropped by defconfig)
CONFIG_PACKAGE_tailscale=y
CONFIG_PACKAGE_luci-app-tailscale=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-openlist=y
CONFIG_PACKAGE_msd_lite=y
CONFIG_PACKAGE_luci-app-msd_lite=y
CONFIG_PACKAGE_luci-app-eqosplus=y

# Storage-friendly defaults
CONFIG_TARGET_ROOTFS_PARTSIZE=256
CONFIG_PACKAGE_luci-i18n-base-zh-cn=y
EOF
