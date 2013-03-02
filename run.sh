#!/bin/bash

# PRE-HADOOP:   test R streaming & python streaming via bash pipes
cat z_data.txt | ./mapper.py
cat z_data.txt | ./mapper.R

# LOCAL DEV:    use pig local streaming to feed data into R, include the pig .jar
java -Xmx4096m -cp ./jars/pig-0.10.0.jar org.apache.pig.Main -x local streaming.pig

# CLUSTER DEV:
#pig < streaming.pig
