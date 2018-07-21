#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to you under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


start_mongodb() {
    rm -rf ./mongo/foodmart/
    rm -rf ./mongo/zips/
  cp -r ../foodmart-dataset/target/foodmart-data-json/. ./mongo/foodmart
  cp -r ../zips/src/main/resources/dataset/. ./mongo/zips
  docker-compose up -d --build --force-recreate mongodb
}

start_geode() {
    rm -rf ./geode/geode/
    rm -rf ./geode/dataset/
    cp -r ../geode-standalone-cluster/target/. ./geode/geode/
    cp -r ../zips/src/main/resources/dataset/ ./geode/

    docker-compose up -d --build --force-recreate geode
}

start_cassandra() {
    echo "Starting cassandra"
    rm -rf ./cassandra/dataset/
    cp -r ../twissandra/src/main/resources/dataset/ ./cassandra/

    docker-compose up -d --build --force-recreate cassandra
}

case $1 in
(mongo)
    start_mongodb
  ;;
(cassandra)
  start_cassandra
  ;;
(elastic2)
  docker-compose up -d elastic2 --build --force-recreate
  ;;
(elastic5)
 docker-compose up -d elastic5 --build --force-recreate
 ;;
(druid)
  docker-compose up -d druid --build --force-recreate
  ;;
(geode)
  start_geode
  ;;
(jdbc)
  docker-compose up -d mysql postgres --build --force-recreate
  ;;
(all)
  docker-compose up -d --build --force-recreate
  ;;
esac