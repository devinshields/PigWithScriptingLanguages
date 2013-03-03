#!/bin/bash

# CONFIG:
DATA=./data
SAMPLE=$DATA/simulated_sample.tsv
RESULTS=$DATA/results

# FILE SYSTEM PREP:
rm -rf $DATA
mkdir  $DATA
mkdir  $RESULTS

# SIMULATE SAMPLE DATA: generate some randomized structured data
./ServerLogEntry.py > $SAMPLE


# modeling reducer with pig python
java -Xmx4096m -cp ./lib/jars/pig-0.10.0.jar:./lib/jars/jython-2.5.0.jar org.apache.pig.Main -x local ./pig.py
