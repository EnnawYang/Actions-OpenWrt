#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# 修改机器名称
#sed -i 's/OpenWrt/OpenWrt_x86/g' package/base-files/files/bin/config_generate

# 修改网址
#sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

# 更改默认主题
#sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

#去除默认bootstrap主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改wifi名称
#sed -i 's/OpenWrt/OpenWrt_x86/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 防火墙wan口入站数据修改成ACCEPT(第21行)。如您的网络是公网，建议注释掉此项。
sed -i '21s/REJECT/ACCEPT/g' package/network/config/firewall/files/firewall.config

# 允许远程主机连接到本地 SSH 转发端口。如您的网络是公网，建议注释掉此项。
#sed -i "4a\ \toption GatewayPorts 'on'" package/network/services/dropbear/files/dropbear.config

# atmaterial主题
git clone https://github.com/Mrbai98/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# 最新版argon主题
#git clone https://github.com/jerrykuku/luci-theme-argon package/mine/luci-theme-argon
# 删除自带argon主题
#rm -rf package/lean/luci-theme-argon

# Server酱-微信提醒
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan

# App过滤
git clone https://github.com/destan19/OpenAppFilter package/mine/OpenAppFilter

# AdGuardHome-Luci安装控制界面
git clone https://github.com/adamw92/luci-app-adguardhome package/mine/luci-app-adguardhome

# Clash-Luci安装控制界面,支持ssr
git clone https://github.com/frainzy1477/luci-app-clash package/mine/luci-app-clash
