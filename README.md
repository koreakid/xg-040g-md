# xg-040g-md

ImmortalWrt cloud build bootstrap for 贝尔 XG-040G-MD.

## Current status

- Source: `https://github.com/bingoguo93/immortalwrt`
- Branch: `openwrt-24.10`
- This repo currently provides a **first-pass CI pipeline** (先跑通).
- Target/profile is temporary bootstrap and will be replaced by exact XG-040G-MD DTS/profile patch in next step.

## How to run

1. Open GitHub Actions
2. Run workflow: **ImmortalWrt XG-040G-MD (bootstrap)**
3. Keep defaults unless you need a different source/branch
4. Download artifacts after build finishes

## Included (best-effort)

- `kiddin9/kwrt-packages` feed
- plugin selections in config script:
  - passwall
  - tailscale
  - rtp2httpd
  - openlist
  - 易有云（eqosplus）

> Missing/unavailable packages in selected branch are automatically dropped by `make defconfig`.
