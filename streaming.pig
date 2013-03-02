/*
   Author  : Devin Shields
   Date    : 2013-03-01
   Purpose : demonstrate pig streaming with R and python
*/

/* read the data from HDFS */
A = load './z_data.txt';

/* stream the data through */
R  = stream A through `mapper.R`;
Py = stream A through `mapper.py`;

/* store the results to disk */
rmf z_results_from_R_streaming
STORE R INTO 'z_results_from_R_streaming' USING PigStorage();

rmf z_results_from_python_streaming
STORE Py INTO 'z_results_from_python_streaming' USING PigStorage();
