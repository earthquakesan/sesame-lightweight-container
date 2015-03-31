#!/bin/bash
java -jar jetty-runner.jar --lib openrdf-sesame/lib/ --port 8089 --path /openrdf-sesame openrdf-sesame/war/openrdf-sesame.war --path /openrdf-workbench openrdf-sesame/war/openrdf-workbench.war
