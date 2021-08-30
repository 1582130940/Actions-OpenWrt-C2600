#! /bin/bash

# Description: TP-Link Archer C2600 Source Modify
# Author: 1582130940
# Github: https://github.com/1582130940

# Set Default Wireless SSID (C2600)
sed -i 's/wireless.default_radio${devidx}.ssid=OpenWrt/wireless.default_radio${devidx}.ssid=C2600/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Enable MU-MIMO
sed -i '/encryption/a\			set wireless.radio${devidx}.mu_beamformer=1' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Add Host Name
sed -i '/CST-8/i uci set system.@system[0].hostname=C2600' package/lean/default-settings/files/zzz-default-settings
