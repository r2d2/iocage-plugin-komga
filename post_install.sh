#!/bin/sh

KOMGA_APP_DIR=/usr/local/komga

mkdir -p $KOMGA_APP_DIR
fetch https://github.com/gotson/komga/releases/download/v0.162.0/komga-0.162.0.jar -o $KOMGA_APP_DIR/komga.jar

# Create user & change directory ownership
pw useradd komga -u 5469 -s /bin/csh -m
chown -R komga $KOMGA_APP_DIR

# Start service
sysrc -f /etc/rc.conf komga_enable="YES"
service komga start

{
    echo "✅ komga installation is complete!"
    echo "App dir: $KOMGA_APP_DIR"
    echo "Komga version: 0.162.0"
} > /root/PLUGIN_INFO
