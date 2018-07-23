#!/bin/bash
cd ~
git clone https://github.com/igorKryvenko/calcite-test-dataset
cd calcite-test-dataset
mvn install \
&& echo \
    -Djdbc.driver=com.mysql.jdbc.Driver \
    -Djdbc.url=jdbc:mysql://localhost/foodmart?user=foodmart;password=foodmart