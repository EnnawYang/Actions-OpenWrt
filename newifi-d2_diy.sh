#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# 修改机器名称
sed -i 's/OpenWrt/newifi-d2/g' package/base-files/files/bin/config_generate

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

# svn Lienol's apps & themes，https://github.com/Lienol/openwrt-package
# svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-filebrowser package/mine/luci-app-filebrowser

