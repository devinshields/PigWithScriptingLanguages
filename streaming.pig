/*
   Author  : Devin Shields
   Date    : 2013-03-01
   Purpose : demonstrate pig streaming with R and python
*/


/* read the data from HDFS */
A = load '$SAMPLE';


/* stream the data through */
R  = stream A through `mapper.R`;
Py = stream A through `mapper.py`;


/* store the results to disk */
STORE R INTO '$RESULTS/R_Streaming' USING PigStorage();
STORE Py INTO '$RESULTS/Python_Streaming' USING PigStorage();
