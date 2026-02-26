#!/usr/bin/env bash
set -e

# kwrt packages feed (for passwall/openlist and related packages)
if ! grep -q "kiddin9" feeds.conf.default; then
  echo "src-git kiddin9 https://github.com/kiddin9/kwrt-packages" >> feeds.conf.default
fi

# Bring in rtp2httpd + luci-app-rtp2httpd from upstream OpenWrt support tree
mkdir -p package/rtp2httpd
rm -rf /tmp/rtp2httpd-src
git clone --depth 1 https://github.com/stackia/rtp2httpd /tmp/rtp2httpd-src
cp -a /tmp/rtp2httpd-src/openwrt-support/rtp2httpd package/rtp2httpd/
cp -a /tmp/rtp2httpd-src/openwrt-support/luci-app-rtp2httpd package/rtp2httpd/
