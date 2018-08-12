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


RUN apt-get update && apt-get install -y \
curl


ENV DRUID_VERSION 0.11.0
ENV ZOOKEEPER_VERSION 3.4.10
ENV HOME /root


WORKDIR $HOME

RUN echo "Installing Zookeper"

RUN curl --silent http://apache.org/dist/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -o /var/cache/apt/archives/zookeeper-${ZOOKEEPER_VERSION}.tar.gz

RUN tar -xzvf /var/cache/apt/archives/zookeeper-${ZOOKEEPER_VERSION}.tar.gz
ENV ZOOKEEPER_HOME zookeeper-${ZOOKEEPER_VERSION}
WORKDIR $ZOOKEEPER_HOME
RUN cp conf/zoo_sample.cfg conf/zoo.cfg

RUN echo "Zookeeper installed succesfully"

RUN echo "Installing Druid"
WORKDIR $HOME
RUN curl --silent http://static.druid.io/artifacts/releases/druid-${DRUID_VERSION}-bin.tar.gz -o /var/cache/apt/archives/druid-${DRUID_VERSION}-bin.tar.gz
RUN tar -xzvf /var/cache/apt/archives/druid-${DRUID_VERSION}-bin.tar.gz
ENV DRUID_HOME druid-${DRUID_VERSION}
WORKDIR $HOME



RUN echo "Druid installed succesfully"



COPY druid /dataset/druid
ADD data.tar.gz /dataset/druid



RUN chmod 755 /dataset/druid/install.sh
RUN chmod 755 /dataset/druid/index.sh
RUN chmod 755 /dataset/druid/query.sh
RUN chmod 755 /dataset/druid/run.sh


COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT docker-entrypoint.sh