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

#docker network remove calcite_subnet
#docker network create --subnet=192.168.0.0/16 calcite_subnet

case $1 in
(mongo)
  docker build -t mongo_docker mongo/
  ;;
(cassandra)
  docker build -t cassandra_docker cassandra/
  ;;
(elastic)
  docker build -t elasticsearch_docker elasticsearch/
  ;;
(druid)
  docker build -t druid_docker druid/
  ;;
esac