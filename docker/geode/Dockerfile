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

FROM openjdk:8

COPY dataset /dataset/
COPY geode /geode
COPY init_geode.sh /geode
COPY docker-entrypoint.sh /


RUN chmod -R 755 /geode \
    && chmod a+x /geode/init_geode.sh \
    && chmod a+x /geode/init_geode_gfsh.sh \
    && chmod a+x /docker-entrypoint.sh


WORKDIR /geode


#geode_gfsh

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget http://apache.proserve.nl/geode/1.4.0/apache-geode-1.4.0.zip \
    && unzip apache-geode-1.4.0.zip

ENV GEODE_HOME /geode/apache-geode-1.4.0
ENV PATH $GEODE_HOME/:$PATH

RUN ln -s /geode/geode-standalone-cluster-0.0.1-SNAPSHOT.jar /etc/init.d/geode-locator
RUN ln -s /geode/geode-standalone-cluster-0.0.1-SNAPSHOT.jar /etc/init.d/geode-server

ENTRYPOINT ["/docker-entrypoint.sh"]




