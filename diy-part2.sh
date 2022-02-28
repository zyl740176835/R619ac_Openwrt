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
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
find  feeds/luci/applications/ -name luci-app-easymesh -exec rm -rf {} \;
git clone https://github.com/zyl740176835/luci-app-easymesh feeds/luci/applications/luci-app-easymesh
git clone https://github.com/zyl740176835/luci-app-smartdns feeds/luci/applications/luci-app-smartdns
git clone https://github.com/honwen/luci-app-aliddns package/luci-app-aliddns
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome


