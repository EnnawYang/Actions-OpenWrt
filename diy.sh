#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# 修改机器名称
sed -i 's/OpenWrt/OpenWrt_x86/g' package/base-files/files/bin/config_generate

# 修改网址
#sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

# 更改默认主题
#sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

# 防火墙wan口入站数据修改成ACCEPT(第21行)。如您的网络是公网，建议注释掉此项。
#sed -i '21s/REJECT/ACCEPT/g' package/network/config/firewall/files/firewall.config

# 允许远程主机连接到本地 SSH 转发端口。如您的网络是公网，建议注释掉此项。
#sed -i "4a\ \toption GatewayPorts 'on'" package/network/services/dropbear/files/dropbear.config

# atmaterial主题
git clone https://github.com/Mrbai98/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# Rosy Theme for LuCI [ OpenWrt-18.06 Branch Only ]
git clone https://github.com/rosywrt/luci-theme-rosy package/mine/rosy

# Serverchan
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan
# 修改读取温度文件为/sys/class/hwmon/hwmon1/temp*_input
sed -i 's/\/sys\/class\/thermal\/thermal_zone\*\/temp/\/sys\/class\/hwmon\/hwmon1\/temp\*_input/g' package/mine/luci-app-serverchan/root/usr/bin/serverchan/serverchan

# OpenAppFilter(luci-app-oaf)
git clone https://github.com/destan19/OpenAppFilter package/mine/OpenAppFilter

# DiskMan for LuCI (WIP)
git clone https://github.com/lisaac/luci-app-diskman package/mine/luci-app-diskman
mkdir -p package/mine/parted && cp -i package/mine/luci-app-diskman/Parted.Makefile package/mine/parted/Makefile

# svn Lienol's apps & themes，https://github.com/Lienol/openwrt-package
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-fileassistant package/mine/luci-app-fileassistant
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-filebrowser package/mine/luci-app-filebrowser
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-theme-argon-dark-mod package/mine/luci-theme-argon-dark-mod
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-theme-argon-light-mod package/mine/luci-theme-argon-light-mod


# luci-app-vssr
#git clone https://github.com/jerrykuku/luci-app-vssr package/mine/luci-app-vssr
