#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# atmaterial主题
# git clone https://github.com/yangsongli/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# Rosy Theme for LuCI [ OpenWrt-18.06 Branch Only ]
# git clone https://github.com/rosywrt/luci-theme-rosy package/mine/rosy

# luci-theme-argon for 18.06 by jerrykuku
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/mine/luci-theme-argon

# Serverchan
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan

# serverchand
# git clone https://github.com/zzsj0928/luci-app-serverchand package/mine/luci-app-serverchand

# luci-app-ssr-plus
git clone https://github.com/fw876/helloworld package/mine/luci-app-ssr-plus

# luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb package/mine/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/mine/luci-app-vssr

# openwrt-gowebdav
git clone https://github.com/project-openwrt/openwrt-gowebdav package/mine/webdav

# A tele-aria2 bot for openwrt
# git clone https://github.com/EnnawYang/tele-aria2-openwrt package/mine/tele-aria2-openwrt

# luci-app-poweroff by eSir
git clone https://github.com/esirplayground/luci-app-poweroff package/mine/luci-app-poweroff

# rtl8812au-ac USB Wi-Fi adapter driver
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/rtl8812au-ac package/mine/rtl8812au-ac

# rtl8821cu USB Wi-Fi adapter driver
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/rtl8821cu package/mine/rtl8821cu

