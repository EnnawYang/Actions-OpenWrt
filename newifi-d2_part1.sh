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
git clone https://github.com/rosywrt/luci-theme-rosy package/mine/rosy

# luci-app-ssr-plus
git clone https://github.com/fw876/helloworld package/mine/luci-app-ssr-plus

# svn Lienol's apps & themes，https://github.com/Lienol/openwrt-package
# svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-filebrowser package/mine/luci-app-filebrowser
