#!/bin/bash
set -e

# Start Geode locator
/etc/init.d/geode-locator start --geode.memberMode=locator

sleep 15s

# Start Geode server
/etc/init.d/geode-server start --geode.memberMode=server \
       --geode.region.Zips=PARTITION \
       --geode.jsonLoad.Zips=file:/dataset/zips.json


/wait-for.sh 127.0.0.1:10334
/wait-for.sh 127.0.0.1:1099

echo Geode is ready

tail -f /dev/null