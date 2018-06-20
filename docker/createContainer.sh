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

case $1 in
(mongo)
  docker create --name mongo_container -p 27017:27017 mongo_docker
  ;;
(cassandra)
  docker create --name cassandra_container -p 9042:9042 cassandra_docker
  ;;
(elastic)
  docker create --name elasticsearch_container -p 9200:9200 -p 9300:9300 elasticsearch_docker
  ;;
(druid)
  docker create --name druid_container -p 8081:8081 -p 8082:8082 -p 8083:8083 -p 8084:8084 -p 8090:8090 druid_docker
  ;;
esac