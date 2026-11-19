# Copyright 2024 Douglas Orend <doug.orend2@gmail.com>
# This is free software, licensed under the Apache License, Version 2.0

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI status page for server listening ports
LUCI_DEPENDS:=+luci-base
LUCI_MAINTAINER:=Douglas Orend <doug.orend2@gmail.com>

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Douglas Orend <doug.orend2@gmail.com>
PKG_VERSION:=1.0
PKG_RELEASE:=4

# Фиксируем версию i18n-пакетов: без этого luci.mk считает её из git/mtime, и в CI она будет меняться каждый прогон
PKG_PO_VERSION:=$(PKG_VERSION)-r$(PKG_RELEASE)

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
