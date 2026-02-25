#!/usr/bin/env bash
set -e

# kwrt packages feed (for passwall/openlist/yiyun and related packages)
if ! grep -q "kiddin9" feeds.conf.default; then
  echo "src-git kiddin9 https://github.com/kiddin9/kwrt-packages" >> feeds.conf.default
fi
