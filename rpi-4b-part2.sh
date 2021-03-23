#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 修改机器名称
sed -i 's/OpenWrt/RaspberryPi4B/g' package/base-files/files/bin/config_generate

# This script is only for Raspberry Pi 4 , fix wifi on first boot , Thanks @xmapst
sed -i 's/36/44/g;s/VHT80/VHT20/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 替换Lienol的可道云
rm -rf package/lean/luci-app-kodexplorer
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-kodexplorer package/lean/luci-app-kodexplorer

# atmaterial主题
# git clone https://github.com/yangsongli/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# Rosy Theme for LuCI [ OpenWrt-18.06 Branch Only ]
# git clone https://github.com/rosywrt/luci-theme-rosy package/mine/rosy

# luci-theme-argon for 18.06 by jerrykuku
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/mine/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/mine/luci-app-argon-config

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
git clone https://github.com/immortalwrt/openwrt-gowebdav package/mine/webdav

# A tele-aria2 bot for openwrt
# git clone https://github.com/EnnawYang/tele-aria2-openwrt package/mine/tele-aria2-openwrt

# luci-app-poweroff by eSir
git clone https://github.com/esirplayground/luci-app-poweroff package/mine/luci-app-poweroff

# Luci-app-dockerman
git clone https://github.com/lisaac/luci-app-dockerman package/mine/luci-app-dockerman
git clone https://github.com/lisaac/luci-lib-docker package/mine/luci-lib-docker

# rtl8812au-ac USB Wi-Fi adapter driver
svn co https://github.com/immortalwrt/openwrt/branches/master/package/kernel/rtl8812au-ac package/mine/rtl8812au-ac

# rtl8821cu USB Wi-Fi adapter driver
svn co https://github.com/immortalwrt/openwrt/branches/master/package/kernel/rtl8821cu package/mine/rtl8821cu

# 更改默认主题
#sed -i 's/config internal themes/config internal themes\n    option Rosy  \"\/luci-static\/rosy\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

# 防火墙wan口入站数据修改成ACCEPT(第21行)。如您的网络是公网，建议注释掉此项。
#sed -i '21s/REJECT/ACCEPT/g' package/network/config/firewall/files/firewall.config

# 允许远程主机连接到本地 SSH 转发端口。如您的网络是公网，建议注释掉此项。
#sed -i "4a\ \toption GatewayPorts 'on'" package/network/services/dropbear/files/dropbear.config
