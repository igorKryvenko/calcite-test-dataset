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


FROM ubuntu:16.04

COPY wait-for.sh /
COPY docker-entrypoint.sh /

RUN apt-get update && apt-get install -y \
    curl \
    gcc \
    git \
    lib32z1-dev \
    libffi-dev \
    libssl-dev \
    libxml2 \
    libxslt-dev \
    lnav \
    maven \
    python-dev \
    python-lxml \
    python-setuptools \
    libssl-dev \
    libpam-cracklib \
    openjdk-8-jdk \
    libxmlsec1-dev \
    make \
    unzip \
    netcat \
    nano \
    net-tools

RUN chmod a+x /wait-for.sh \
    && chmod a+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]




