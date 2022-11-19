#!/bin/bash

# {{ Add luci-app-diskman
(cd friendlywrt && {
    mkdir -p package/luci-app-diskman
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O package/luci-app-diskman/Makefile
    mkdir -p package/parted
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O package/parted/Makefile
})
cat >> configs/rockchip/01-nanopi <<EOL
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_btrfs_progs=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_lsblk=y
CONFIG_PACKAGE_smartmontools=y
EOL
# }}

# {{ Add small-package
(cd friendlywrt && {
    [ -d feeds.conf.default ] && 
    sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default && 
    ./scripts/feeds update -a && ./scripts/feeds install -a    
})
# }}

# {{ Add small8
(cd friendlywrt/package && {
    [ -d luci-app-openclash ] && echo "luci-app-openclash.....OK" && echo "CONFIG_PACKAGE_luci-app-openclash=y" >> configs/rockchip/01-nanopi 
    [ -d luci-app-store ] && echo "luci-app-store.....OK" && echo "CONFIG_PACKAGE_luci-app-store=y" >> configs/rockchip/01-nanopi
    [ -d luci-app-v2raya ] && echo "luci-app-v2raya.....OK" && echo "CONFIG_PACKAGE_luci-app-v2raya=y" >> configs/rockchip/01-nanopi 
})
# }}


# {{ Add luci-app-ipsec-vpnd
(cd friendlywrt/package && {
    [ -d luci-app-ipsec-vpnd ] && rm -rf luci-app-ipsec-vpnd
    git clone https://github.com/tungnt017/luci-app-ipsec-vpnd.git
    [ -d luci-app-ipsec-vpnd ] && echo "luci-app-ipsec-vpnd.....OK"
})
echo "CONFIG_PACKAGE_luci-app-ipsec-vpnd=y" >> configs/rockchip/01-nanopi
# }}



# {{ Add luci-app-openclash
(cd friendlywrt/package && {
    [ -d luci-app-openclash ] && rm -rf luci-app-openclash
    git clone https://github.com/vernesong/OpenClash.git
    cd OpenClash && mv luci-app-openclash ../ && cd .. && rm -rf OpenClash
    [ -d luci-app-openclash ] && echo "luci-app-openclash.....OK"
})
echo "CONFIG_PACKAGE_luci-app-openclash=y" >> configs/rockchip/01-nanopi
# }}

# {{ Add luci-app-ipsec-vpnd
(cd friendlywrt/package && {
    [ -d luci-app-ipsec-vpnd ] && rm -rf luci-app-ipsec-vpnd
    git clone https://github.com/tungnt017/luci-app-ipsec-vpnd.git
    [ -d luci-app-ipsec-vpnd ] && echo "luci-app-ipsec-vpnd.....OK"
})
echo "CONFIG_PACKAGE_luci-app-ipsec-vpnd=y" >> configs/rockchip/01-nanopi
# }}

# {{ Add luci-app-pptp-server
(cd friendlywrt/package && {
    [ -d luci-app-pptp-server ] && rm -rf luci-app-pptp-server
    git clone https://github.com/xkstudio/luci-app-pptp-server.git
    [ -d luci-app-pptp-server ] && echo "luci-app-pptp-server.....OK"
})
echo "CONFIG_PACKAGE_luci-app-pptp-server=y" >> configs/rockchip/01-nanopi
# }}

# {{ Add luci-theme-argon
(cd friendlywrt/package && {
    [ -d luci-theme-argon ] && rm -rf luci-theme-argon[ -d luci-theme-argon ] && rm -rf luci-theme-argon
    git clone https://github.com/jerrykuku/luci-theme-argon.git --depth 1 -b master
})
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> configs/rockchip/01-nanopi
sed -i -e 's/function init_theme/function old_init_theme/g' friendlywrt/target/linux/rockchip/armv8/base-files/root/setup.sh
cat > /tmp/appendtext.txt <<EOL
function init_theme() {
    if uci get luci.themes.Argon >/dev/null 2>&1; then
        uci set luci.main.mediaurlbase="/luci-static/argon"
        uci commit luci
    fi
}
EOL
sed -i -e '/boardname=/r /tmp/appendtext.txt' friendlywrt/target/linux/rockchip/armv8/base-files/root/setup.sh
# }}
