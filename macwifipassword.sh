#!/bin/bash
SSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}')
echo "Connected to Wi-Fi network: $SSID"
password=$(security find-generic-password -D "AirPort network password" -a "$SSID" -w)
echo "Wi-Fi network password for \"$SSID\": $password"


