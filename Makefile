include $(TOPDIR)/rules.mk

LUCI_TITLE:=Listening Ports for LuCI 
LUCI_DEPENDS:=+luci-base
LUCI_PKGARCH:=all

PKG_NAME:=luci-mod-listening-ports
PKG_LICENSE:=Apache-2.0
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
