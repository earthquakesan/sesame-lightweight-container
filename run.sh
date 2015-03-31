#!/bin/bash
CURRENT_DIR=$(pwd)
SESAME_DATA_DIR=$CURRENT_DIR/sesame-data
echo $SESAME_DATA_DIR
#create a dir if does not exist
[ -d $SESAME_DATA_DIR ] || mkdir $SESAME_DATA_DIR
JAVA_OPTS="-Xms512m -Xmx512m -Dinfo.aduna.platform.appdata.basedir=$SESAME_DATA_DIR/"
java $JAVA_OPTS -jar jetty-runner.jar --lib openrdf-sesame/lib/ --port 8089 --path /openrdf-sesame openrdf-sesame/war/openrdf-sesame.war --path /openrdf-workbench openrdf-sesame/war/openrdf-workbench.war
