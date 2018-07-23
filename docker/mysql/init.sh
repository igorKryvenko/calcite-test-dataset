#!/bin/bash
whoami

cd ~
git clone https://github.com/igorKryvenko/calcite-test-dataset
cd calcite-test-dataset \
&& git checkout docker \
&& mvn clean install \
&& cd mysql \
mvn clean install


