#!/bin/bash
echo "initializing the project..."

SESAME_2_8_1_URL="http://sourceforge.net/projects/sesame/files/Sesame%202/2.8.1/openrdf-sesame-2.8.1-sdk.tar.gz/download"
SESAME_2_8_1_DIRNAME="openrdf-sesame-2.8.1"
wget $SESAME_2_8_1_URL -O sesame.tar.gz
tar -xvf sesame.tar.gz
rm -rf sesame.tar.gz
mv $SESAME_2_8_1_DIRNAME openrdf-sesame

JETTY_RUNNER_8_1_9_URL="http://repo2.maven.org/maven2/org/mortbay/jetty/jetty-runner/8.1.9.v20130131/jetty-runner-8.1.9.v20130131.jar"
wget $JETTY_RUNNER_8_1_9_URL -O jetty-runner.jar
