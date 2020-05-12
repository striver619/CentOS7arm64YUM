#! /bin/bash
# date: 2020-05-12 12:26
# author: IT-coding（微信公众号）
# 鲲鹏CentOS7-arm64-YUM更新源脚本
# 内核版本：4.14.0-115.el7a.0.1.aarch64 #1 SMP Sun Nov 25 20:54:21 UTC 2018 aarch64 aarch64 aarch64 GNU/Linux
# 系统版本：CentOS Linux release 7.6.1810 (AltArch)

echo "----------hello ...----------" &&
hostnamectl &&
cat /etc/redhat-release &&
yum repolist &&
ls -l /etc/yum.repos.d/ &&
mkdir /etc/yum.repos.d/repos.bak && mv /etc/yum.repos.d/CentOS-* /etc/yum.repos.d/repos.bak &&
ls -l /etc/yum.repos.d/ &&
touch /etc/yum.repos.d/CentOS-Base-kunpeng.repo &&
cat>"/etc/yum.repos.d/CentOS-Base-kunpeng.repo"<<EOF
[kunpeng]
name=CentOS-kunpeng - Base - mirrors.huaweicloud.com
baseurl=https://mirrors.huaweicloud.com/kunpeng/yum/el/7/aarch64/
gpgcheck=0
enabled=1
EOF
cat /etc/yum.repos.d/CentOS-Base-kunpeng.repo &&
yum clean all &&
yum makecache &&
yum repolist &&
echo "----------bye ...----------"
