#!/bin/bash
set -e

# Start Geode locator
/etc/init.d/geode-locator start --geode.memberMode=locator

sleep 15s

# Start Geode server
/etc/init.d/geode-server start --geode.memberMode=server \
       --geode.region.Zips=PARTITION \
       --geode.jsonLoad.Zips=file:/dataset/zips/zips.json

echo Geode is ready

tail -f /dev/null