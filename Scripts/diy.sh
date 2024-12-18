#!/bin/bash
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
git clone   -b  main  --single-branch  https://github.com/lmq8267/luci-app-vnt    package/zongheng/luci-app-vnt 
git clone   -b  main  --single-branch   https://github.com/vnt-dev/vnt    package/zongheng/vnt  
./scripts/feeds update -a 
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}

./scripts/feeds install -a  
