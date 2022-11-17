#!/bin/bash

sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi

sed -i -e 's/CONFIG_PACKAGE_luci-app-ntpc=y/# CONFIG_PACKAGE_luci-app-ntpc is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-nft-qos=y/# CONFIG_PACKAGE_luci-app-nft-qos is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-adblock=y/# CONFIG_PACKAGE_luci-app-adblock is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-nlbwmon=y/# CONFIG_PACKAGE_luci-app-nlbwmon is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-watchcat=y/# CONFIG_PACKAGE_luci-app-watchcat is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-upnp=y/# CONFIG_PACKAGE_luci-app-upnp is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-smartdns=y/# CONFIG_PACKAGE_luci-app-smartdns is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-aria2=y/# CONFIG_PACKAGE_luci-app-aria2 is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-hd-idle=y/# CONFIG_PACKAGE_luci-app-hd-idle is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-minidlna=y/# CONFIG_PACKAGE_luci-app-minidlna is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-sqm=y/# CONFIG_PACKAGE_luci-app-sqm is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-samba4=y/# CONFIG_PACKAGE_luci-app-samba4 is not set/g' configs/rockchip/01-nanopi
