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
# git clone https://github.com/Mrbai98/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# Rosy Theme for LuCI [ OpenWrt-18.06 Branch Only ]
# git clone https://github.com/rosywrt/luci-theme-rosy package/mine/rosy

# luci-theme-argon for 18.06 by jerrykuku
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/mine/luci-theme-argon

# Serverchan
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan
# 修改读取温度文件为/sys/class/hwmon/hwmon1/temp*_input
# sed -i 's/\/sys\/class\/thermal\/thermal_zone\*\/temp/\/sys\/class\/hwmon\/hwmon1\/temp\*_input/g' package/mine/luci-app-serverchan/root/usr/bin/serverchan/serverchan

# luci-app-ssr-plus
git clone https://github.com/fw876/helloworld package/mine/luci-app-ssr-plus

# openwrt-gowebdav
git clone https://github.com/project-openwrt/openwrt-gowebdav package/mine/webdav

# OpenClash
git clone -b master https://github.com/vernesong/OpenClash package/mine/OpenClash
pushd package/mine/OpenClash/luci-app-openclash/tools/po2lmo
make && sudo make install
popd

# A tele-aria2 bot for openwrt
git clone https://github.com/EnnawYang/tele-aria2-openwrt package/mine/tele-aria2-openwrt

# Luci for JD dailybonus Script for Openwrt
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/mine/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/node-request package/mine/node-request


# OpenAppFilter(luci-app-oaf)
# git clone https://github.com/destan19/OpenAppFilter package/mine/OpenAppFilter

# DiskMan for LuCI (WIP)
# git clone https://github.com/lisaac/luci-app-diskman package/mine/luci-app-diskman
# mkdir -p package/mine/parted && cp -i package/mine/luci-app-diskman/Parted.Makefile package/mine/parted/Makefile

# svn Lienol's apps & themes，https://github.com/Lienol/openwrt-package
# svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-filebrowser package/mine/luci-app-filebrowser
