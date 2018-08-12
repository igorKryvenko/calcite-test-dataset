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

USER root

COPY dataset /dataset/
COPY geode/geode-standalone-cluster-0.0.1-SNAPSHOT.jar /geode/geode-cluster.jar
COPY docker-entrypoint.sh /
COPY wait-for.sh /


RUN chmod -R 755 /geode \
    && chmod a+x /docker-entrypoint.sh \
    && chmod a+x /wait-for.sh


RUN apt-get update \
    && apt-get install -y curl tar sudo openssh-server rsync netcat nano net-tools wget \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /geode


#geode_gfsh

ENV GEODE_VERSION 1.4.0

RUN wget http://apache.proserve.nl/geode/${GEODE_VERSION}/apache-geode-${GEODE_VERSION}.zip \
    && unzip apache-geode-${GEODE_VERSION}.zip

ENV GEODE_HOME /geode/apache-geode-${GEODE_VERSION}
ENV PATH $GEODE_HOME/:$PATH

RUN ln -s /geode/geode-cluster.jar /etc/init.d/geode-locator
RUN ln -s /geode/geode-cluster.jar /etc/init.d/geode-server


ENTRYPOINT ["/docker-entrypoint.sh"]





