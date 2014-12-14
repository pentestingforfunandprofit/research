#!/bin/sh
cp dozerBeanMapping.xml /tmp/
mvn clean compile assembly:single && java -jar target/dozersploit-1.0-SNAPSHOT-jar-with-dependencies.jar
rm -f /tmp/dozerBeanMapping.xml
rm -rf proxy.ser
mvn clean
