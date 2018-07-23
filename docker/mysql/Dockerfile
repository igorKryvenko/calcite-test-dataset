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

FROM mysql:5.7
USER root
COPY init.sql /docker-entrypoint-initdb.d/
COPY init.sh /docker-entrypoint-initdb.d/

RUN chmod a+x /docker-entrypoint-initdb.d/init.sql \
    && chmod a+x /docker-entrypoint-initdb.d/init.sh

## UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

RUN apt-get update && \
  apt-get dist-upgrade -y

## Remove any existing JDKs
RUN apt-get --purge remove openjdk*

## Install Oracle's JDK
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN mkdir /usr/share/man/man1
RUN apt-get update && \
  apt-get install -y --no-install-recommends oracle-java8-installer && \
  apt-get clean all

RUN apt-get install -y \
 git \
 maven


RUN mkdir /home/mysql \
    && chown mysql:mysql /home/mysql