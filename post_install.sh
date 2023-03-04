#!/bin/sh

KOMGA_RELEASE="0.162.0"
cp /usr/local/etc/komga-plugin.conf.sample /usr/local/etc/komga-plugin.conf
. /usr/local/etc/komga-plugin.conf
: "${KOMGA_APP_DIR:=/usr/local/komga}"

mkdir -p $KOMGA_APP_DIR
cd $KOMBA_APP_DIR
fetch https://github.com/gotson/komga/releases/download/v$KONGA_RELEASE/komga-$KONGA_RELEASE.jar
ln -sf komga-0.162.0.jar "komga.jar"

# Start service
sysrc -f /etc/rc.conf komga_enable="YES"
service komga start

{
    echo "✅ komga installation is complete!"
    echo "App dir: $KOMGA_APP_DIR"
    echo "Komga version: $KOMGA_RELEASE"
} > /root/PLUGIN_INFO
