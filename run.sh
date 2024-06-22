#!/bin/sh
# 更新
apk update && apk upgrade

# 设置时区
apk add tzdata
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "Asia/Shanghai" > /etc/timezone
apk del tzdata

# 设置语言编码
RUN apk add --no-cache musl-locales
ENV LANG en_US.UTF-8

# 安装软件
apk add curl
apk add busybox-extras # telnet

# 删除缓存
rm -rf /var/cache/apk/*
