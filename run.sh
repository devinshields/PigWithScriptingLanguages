#!/bin/bash

# CONFIG:
DATA=./data
SAMPLE=$DATA/simulated_sample.tsv
RESULTS=$DATA/results

# FILE SYSTEM PREP:
rm -rf $DATA
mkdir  $DATA
mkdir  $RESULTS


# SIMULATE PROCESS: generate some randomized structured data
./generatesample.py > $SAMPLE


# PRE-HADOOP: test R streaming & python streaming via bash pipes
cat $SAMPLE | ./mapper.py
cat $SAMPLE | ./mapper.R


# LOCAL DEV:    use pig local streaming to feed data into R, include the pig .jar
java -Xmx4096m -cp ./jars/pig-0.10.0.jar org.apache.pig.Main -param SAMPLE=$SAMPLE -param RESULTS=$RESULTS -x local streaming.pig 


# CLUSTER DEV:
#pig streaming.pig -param SAMPLE=$SAMPLE
