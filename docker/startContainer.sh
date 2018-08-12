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

#########################
# The command line help #
#########################
display_help() {
    echo "Usage: $0 [option...] {mongodb|cassandra|elastic|elastic2|elastic5|druid|geode|jdbc|all}" >&2
    echo
    exit 1
}

case $1 in
    (mongodb)
        docker-compose up --build --force-recreate mongodb
        ;;

    (cassandra)
        docker-compose up --build --force-recreate cassandra
        ;;

    (elastic)
        docker-compose up --build --force-recreate elastic
        ;;

    (elastic2)
        docker-compose up   --build --force-recreate elasticsearch2
        ;;

    (elastic5)
        docker-compose up   --build --force-recreate elasticsearch5
        ;;

    (druid)
        docker-compose up  --build --force-recreate druid
        ;;

    (geode)
        docker-compose up  --build --force-recreate geode
        ;;

    (jdbc)
        docker-compose up --build  mysql postgres
        ;;

    (all)
        docker-compose up --build --force-recreate cassandra druid mongodb geode mysql postgres
        ;;

    -h |--help)
        display_help
        ;;
    *)
        echo "Error: Unknown option: $1" >&2
        display_help
        ;;
esac
