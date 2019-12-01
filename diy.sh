#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# atmaterial主题
git clone https://github.com/Mrbai98/luci-theme-atmaterial package/mine/luci-theme-atmaterial

# Server酱-微信提醒
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan

# App过滤
git clone https://github.com/destan19/OpenAppFilter package/mine/OpenAppFilter
