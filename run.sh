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


# LOCAL DEV: map only
#java -Xmx4096m -cp ./lib/jars/pig-0.10.0.jar:./lib/jars/jython-2.5.0.jar org.apache.pig.Main -x local ./simple_map.pig


# LOCAL DEV: reduce using python UDFs to organize data
#java -Xmx4096m -cp ./lib/jars/pig-0.10.0.jar:./lib/jars/jython-2.5.0.jar org.apache.pig.Main -x local ./pig.py



# LOCAL DEV: pass pig groups as JSON into R streaming
java -Xmx4096m -cp ./lib/jars/pig-0.10.0.jar org.apache.pig.Main -x local ./store_group_as_json.pig
cat ./data/groups_as_json/* > data/groups.json
java -Xmx4096m -cp ./lib/jars/pig-0.10.0.jar org.apache.pig.Main -x local ./stream_group_as_json.pig


# LOCAL DEV: test an rjson reducer
#cat ./data/groups_as_json/p* | ./rjson.R



# CLUSTER DEV: 
#pig < pig.py
