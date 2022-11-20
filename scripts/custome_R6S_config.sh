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

sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-bg=y/# CONFIG_PACKAGE_luci-i18n-base-bg is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-ca=y/# CONFIG_PACKAGE_luci-i18n-base-ca is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-cs=y/# CONFIG_PACKAGE_luci-i18n-base-cs is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-de=y/# CONFIG_PACKAGE_luci-i18n-base-de is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-el=y/# CONFIG_PACKAGE_luci-i18n-base-el is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-en=y/# CONFIG_PACKAGE_luci-i18n-base-en is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-es=y/# CONFIG_PACKAGE_luci-i18n-base-es is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-fr=y/# CONFIG_PACKAGE_luci-i18n-base-fr is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-he=y/# CONFIG_PACKAGE_luci-i18n-base-he is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-hu =y/# CONFIG_PACKAGE_luci-i18n-base-hu  is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-it=y/# CONFIG_PACKAGE_luci-i18n-base-it is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-ja=y/# CONFIG_PACKAGE_luci-i18n-base-ja is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-ko=y/# CONFIG_PACKAGE_luci-i18n-base-ko is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-mr=y/# CONFIG_PACKAGE_luci-i18n-base-mr is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-ms=y/# CONFIG_PACKAGE_luci-i18n-base-ms is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-pl=y/# CONFIG_PACKAGE_luci-i18n-base-pl is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-pt=y/# CONFIG_PACKAGE_luci-i18n-base-pt is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-pt-br=y/# CONFIG_PACKAGE_luci-i18n-base-pt-br is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-ro=y/# CONFIG_PACKAGE_luci-i18n-base-ro is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-ru=y/# CONFIG_PACKAGE_luci-i18n-base-ru is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-sk=y/# CONFIG_PACKAGE_luci-i18n-base-sk is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-sv=y/# CONFIG_PACKAGE_luci-i18n-base-sv is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-tr =y/# CONFIG_PACKAGE_luci-i18n-base-tr  is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-uk =y/# CONFIG_PACKAGE_luci-i18n-base-uk  is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-vi =y/# CONFIG_PACKAGE_luci-i18n-base-vi  is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-i18n-base-zh-tw =y/# CONFIG_PACKAGE_luci-i18n-base-zh-tw  is not set/g' configs/rockchip/01-nanopi
