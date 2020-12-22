#! /bin/bash

# Description: TP-Link Archer C2600 Source Modify
# Author: 1582130940
# Github: https://github.com/1582130940

# Add Thermal Status (By YYiiEt)
sed -i 's/or "1"%>/or "1"%> ( <%=luci.sys.exec("expr `cat \/sys\/class\/thermal\/thermal_zone0\/temp` \/ 1000") or "?"%> \&#8451; ) /g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

# Set LuCI Default Theme to Material
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile
