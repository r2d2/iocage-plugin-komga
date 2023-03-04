#!/bin/sh

cp /usr/local/etc/komga-plugin.conf.sample /usr/local/etc/komga-plugin.conf
. /usr/local/etc/komga-plugin.conf
: "${KOMGA_APP_DIR:=/usr/local/komga}"

mkdir -p $KOMGA_APP_DIR
cd $KOMBA_APP_DIR
fetch https://github.com/gotson/komga/releases/download/v0.162.0/komga-0.162.0.jar
ln -sf komga-0.162.0.jar komga.jar

# Start service
sysrc -f /etc/rc.conf komga_enable="YES"
service komga start

{
    echo "✅ komga installation is complete!"
    echo "App dir: $KOMGA_APP_DIR"
    echo "Komga version: 0.162.0"
} > /root/PLUGIN_INFO
