#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Lienol/openwrt-package
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# atmaterial主题
git clone https://github.com/Mrbai98/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# Rosy Theme for LuCI [ OpenWrt-18.06 Branch Only ]
git clone https://github.com/rosywrt/luci-theme-rosy package/mine/rosy

# Serverchan
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan

# luci-app-ssr-plus
git clone https://github.com/fw876/helloworld package/mine/luci-app-ssr-plus

# openwrt-gowebdav
git clone https://github.com/project-openwrt/openwrt-gowebdav package/mine/webdav

# OpenAppFilter(luci-app-oaf)
# git clone https://github.com/destan19/OpenAppFilter package/mine/OpenAppFilter

# DiskMan for LuCI (WIP)
# git clone https://github.com/lisaac/luci-app-diskman package/mine/luci-app-diskman
# mkdir -p package/mine/parted && cp -i package/mine/luci-app-diskman/Parted.Makefile package/mine/parted/Makefile

# svn Lienol's apps & themes，https://github.com/Lienol/openwrt-package
# svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-filebrowser package/mine/luci-app-filebrowser