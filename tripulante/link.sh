#!/bin/bash

GITPATH="/Users/Liceth Flores/Documents/GitHub"
CURRENT="${GITPATH}/Tripulante/tripulante"

rm -fr Fourteam
mkdir Fourteam
ln -sfn "${GITPATH}/Fourteam/src" "${CURRENT}/Fourteam/src"
ln -sfn "${GITPATH}/Fourteam/lib" "${CURRENT}/Fourteam/lib"

echo $ITEM > "${CURRENT}/Fourteam/pom.xml"
cat > "${CURRENT}/Fourteam/pom.xml" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <parent>
    <artifactId>tripulante</artifactId>
    <groupId>dmsnur</groupId>
    <version>1.0</version>
  </parent>

  <groupId>dmsnur</groupId>
  <artifactId>Fourteam</artifactId>
  <version>1.0</version>

  <dependencies>
    <dependency>
      <groupId>com.google.code.gson</groupId>
      <artifactId>gson</artifactId>
      <version>2.9.0</version>
    </dependency>
    <dependency>
      <groupId>org.jboss.com.sun.httpserver</groupId>
      <artifactId>httpserver</artifactId>
      <version>1.0.8.Final</version>
      <scope>system</scope>
      <systemPath>\${basedir}/lib/httpserver-1.0.8.Final.jar</systemPath>
    </dependency>
    <dependency>
      <groupId>org.json</groupId>
      <artifactId>json</artifactId>
      <version>20210307</version>
    </dependency>
    <dependency>
      <groupId>org.yaml</groupId>
      <artifactId>snakeyaml</artifactId>
      <version>1.30</version>
    </dependency>
    <dependency>
        <groupId>com.rabbitmq</groupId>
        <artifactId>amqp-client</artifactId>
        <version>5.14.2</version>
    </dependency>
    <dependency>
        <groupId>org.slf4j</groupId>
        <artifactId>slf4j-log4j12</artifactId>
        <version>1.7.5</version>
    </dependency>
  </dependencies>

</project>

EOF



rm -fr SharedKernel
mkdir SharedKernel
ln -sfn "${GITPATH}/SharedKernel/src" "${CURRENT}/SharedKernel/src"

echo $ITEM > "${CURRENT}/SharedKernel/pom.xml"
cat > "${CURRENT}/SharedKernel/pom.xml" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <parent>
    <artifactId>tripulante</artifactId>
    <groupId>dmsnur</groupId>
    <version>1.0</version>
  </parent>

  <groupId>dmsnur</groupId>
  <artifactId>SharedKernel</artifactId>
  <version>1.0</version>

  <dependencies>
    <dependency>
      <groupId>dmsnur</groupId>
      <artifactId>Fourteam</artifactId>
      <version>1.0</version>
    </dependency>
  </dependencies>
</project>
EOF
