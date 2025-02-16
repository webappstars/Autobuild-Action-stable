#!/bin/bash
# AutoBuild Module by Hyy2001 <https://github.com/Hyy2001X/AutoBuild-Actions-BETA>
# AutoBuild DiyScript

Firmware_Diy_Core() {

	Author=AUTO
	# 作者名称, AUTO: [自动识别]
	Author_URL=AUTO
	# 自定义作者网站或域名, AUTO: [自动识别]
	Default_Flag=AUTO
	# 固件标签 (名称后缀), 适用不同配置文件, AUTO: [自动识别]
	Default_IP="192.168.1.1"
	# 固件 IP 地址
	Default_Title="Powered by AutoBuild-Actions"
	# 固件终端首页显示的额外信息
	
	Short_Fw_Date=true
	# 简短的固件日期, true: [20210601]; false: [202106012359]
	x86_Full_Images=false
	# 额外上传已检测到的 x86 虚拟磁盘镜像, true: [上传]; false: [不上传]
	Fw_MFormat=AUTO
	# 自定义固件格式, AUTO: [自动识别]
	Regex_Skip="packages|buildinfo|sha256sums|manifest|kernel|rootfs|factory|itb|profile|ext4|json"
	# 输出固件时丢弃包含该内容的固件/文件
	AutoBuild_Features=true
	# 添加 AutoBuild 固件特性, true: [开启]; false: [关闭]
	
	AutoBuild_Features_Patch=false
	AutoBuild_Features_Kconfig=false
}

Firmware_Diy() {

	# 请在该函数内定制固件

	# 可用预设变量, 其他可用变量请参考运行日志
	# ${OP_AUTHOR}			OpenWrt 源码作者
	# ${OP_REPO}				OpenWrt 仓库名称
	# ${OP_BRANCH}			OpenWrt 源码分支
	# ${TARGET_PROFILE}		设备名称
	# ${TARGET_BOARD}			设备架构
	# ${TARGET_FLAG}			固件名称后缀

	# ${WORK}				OpenWrt 源码位置
	# ${CONFIG_FILE}			使用的配置文件名称
	# ${FEEDS_CONF}			OpenWrt 源码目录下的 feeds.conf.default 文件
	# ${CustomFiles}			仓库中的 /CustomFiles 绝对路径
	# ${Scripts}				仓库中的 /Scripts 绝对路径
	# ${FEEDS_LUCI}			OpenWrt 源码目录下的 package/feeds/luci 目录
	# ${FEEDS_PKG}			OpenWrt 源码目录下的 package/feeds/packages 目录
	# ${BASE_FILES}			OpenWrt 源码目录下的 package/base-files/files 目录

	case "${OP_AUTHOR}/${OP_REPO}:${OP_BRANCH}" in
	webappstars/catwrt:save-luci1)
		#cat >> ${Version_File} <<EOF
#sed -i '/check_signature/d' /etc/opkg.conf
#if [ -z "\$(grep "REDIRECT --to-ports 53" /etc/firewall.user 2> /dev/null)" ]
#then
	#echo '# iptables -t nat -A PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 53' >> /etc/firewall.user
	#echo '# iptables -t nat -A PREROUTING -p tcp --dport 53 -j REDIRECT --to-ports 53' >> /etc/firewall.user
	#echo '# [ -n "\$(command -v ip6tables)" ] && ip6tables -t nat -A PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 53' >> /etc/firewall.user
	#echo '# [ -n "\$(command -v ip6tables)" ] && ip6tables -t nat -A PREROUTING -p tcp --dport 53 -j REDIRECT --to-ports 53' >> /etc/firewall.user
	#echo 'iptables -t mangle -A PREROUTING -i pppoe -p icmp --icmp-type destination-unreachable -j DROP' >> /etc/firewall.user
	#echo 'iptables -t mangle -A PREROUTING -i pppoe -p tcp -m tcp --tcp-flags ACK,RST RST -j DROP' >> /etc/firewall.user
	#echo 'iptables -t mangle -A PREROUTING -i pppoe -p tcp -m tcp --tcp-flags PSH,FIN PSH,FIN -j DROP' >> /etc/firewall.user
	#echo '[ -n "\$(command -v ip6tables)" ] && ip6tables -t mangle -A PREROUTING -i pppoe -p tcp -m tcp --tcp-flags PSH,FIN PSH,FIN -j DROP' >> /etc/firewall.user
	#echo '[ -n "\$(command -v ip6tables)" ] && ip6tables -t mangle -A PREROUTING -i pppoe -p ipv6-icmp --icmpv6-type destination-unreachable -j DROP' >> /etc/firewall.user
	#echo '[ -n "\$(command -v ip6tables)" ] && ip6tables -t mangle -A PREROUTING -i pppoe -p tcp -m tcp --tcp-flags ACK,RST RST -j DROP' >> /etc/firewall.user
#fi
#exit 0
#EOF
		# sed -i "s?/bin/login?/usr/libexec/login.sh?g" ${FEEDS_PKG}/ttyd/files/ttyd.config
		# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
		# sed -i '/uci commit luci/i\uci set luci.main.mediaurlbase="/luci-static/argon-mod"' $(PKG_Finder d package default-settings)/files/zzz-default-settings
		#sed -i "s?openwrt-23.05?master?g" ${FEEDS_CONF}
		                 
                git reset --hard d49a28094294a731462661e3e00c59b4f4b5aa5a

        ;;
	esac
}
