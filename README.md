PigWithScriptingLanguages
=========================

Super simple demo of integrating with with scripting languages

Author  : Devin Shields
Date    : 2013-03-01
Purpose : demonstrate pig streaming with R and python

----------------------------------

This repo is a demo of using pig to stream data through scripting languages, namely R and python.

Start by looking at 'run.sh'.

----------------------------------
LOG DUMP FROM SUCCESSFUL TEST:

admins-MacBook-Pro:06_withHadoopPig admin$ ./run.sh
hello is now mapped.
you is now mapped.
beautiful is now mapped.
world is now mapped.
hello is now mapped.
you is now mapped.
beautiful is now mapped.
world is now mapped.
2013-03-01 20:55:54,913 [main] INFO  org.apache.pig.Main - Apache Pig version 0.10.0 (r1328203) compiled Apr 19 2012, 22:54:12
2013-03-01 20:55:54,914 [main] INFO  org.apache.pig.Main - Logging error messages to: /Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/pig_1362189354910.log
2013-03-01 20:55:55.055 java[22852:1903] Unable to load realm info from SCDynamicStore
2013-03-01 20:55:55,226 [main] INFO  org.apache.pig.backend.hadoop.executionengine.HExecutionEngine - Connecting to hadoop file system at: file:///
2013-03-01 20:55:55,680 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig features used in the script: STREAMING
2013-03-01 20:55:55,804 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MRCompiler - File concatenation threshold: 100 optimistic? false
2013-03-01 20:55:55,835 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size before optimization: 1
2013-03-01 20:55:55,835 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size after optimization: 1
2013-03-01 20:55:55,860 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig script settings are added to the job
2013-03-01 20:55:55,879 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - mapred.job.reduce.markreset.buffer.percent is not set, set to default 0.3
2013-03-01 20:55:55,912 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - Setting up single store job
2013-03-01 20:55:55,959 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 1 map-reduce job(s) waiting for submission.
2013-03-01 20:55:55,969 [Thread-3] WARN  org.apache.hadoop.util.NativeCodeLoader - Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
2013-03-01 20:55:55,974 [Thread-3] WARN  org.apache.hadoop.mapred.JobClient - No job jar file set.  User classes may not be found. See JobConf(Class) or JobConf#setJar(String).
2013-03-01 20:55:56,048 [Thread-3] INFO  org.apache.hadoop.mapreduce.lib.input.FileInputFormat - Total input paths to process : 1
2013-03-01 20:55:56,048 [Thread-3] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths to process : 1
2013-03-01 20:55:56,055 [Thread-3] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths (combined) to process : 1
2013-03-01 20:55:56,287 [Thread-4] INFO  org.apache.hadoop.mapred.Task -  Using ResourceCalculatorPlugin : null
2013-03-01 20:55:56,306 [Thread-4] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigRecordReader - Current split being processed file:/Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_data.txt:0+26
===== Task Information Header =====
Command: mapper.R (stdin-org.apache.pig.builtin.PigStreaming/stdout-org.apache.pig.builtin.PigStreaming)
Start time: Fri Mar 01 20:55:56 EST 2013
Input-split file: file:/Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_data.txt
Input-split start-offset: 0
Input-split length: 26
=====          * * *          =====
2013-03-01 20:55:56,462 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - HadoopJobId: job_local_0001
2013-03-01 20:55:56,462 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 0% complete
===== Task Information Footer =====
End time: Fri Mar 01 20:55:56 EST 2013
Exit code: 0
Input records: 4
Input bytes: 536 bytes (stdin using org.apache.pig.builtin.PigStreaming)
Output records: 4
Output bytes: 584 bytes (stdout using org.apache.pig.builtin.PigStreaming)
=====          * * *          =====
2013-03-01 20:55:56,632 [Thread-4] INFO  org.apache.hadoop.mapred.Task - Task:attempt_local_0001_m_000000_0 is done. And is in the process of commiting
2013-03-01 20:55:56,636 [Thread-4] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 20:55:56,636 [Thread-4] INFO  org.apache.hadoop.mapred.Task - Task attempt_local_0001_m_000000_0 is allowed to commit now
2013-03-01 20:55:56,642 [Thread-4] INFO  org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter - Saved output of task 'attempt_local_0001_m_000000_0' to file:/Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_results_from_R_streaming
2013-03-01 20:55:59,260 [Thread-4] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 20:55:59,261 [Thread-4] INFO  org.apache.hadoop.mapred.Task - Task 'attempt_local_0001_m_000000_0' done.
2013-03-01 20:55:59,262 [Thread-4] WARN  org.apache.hadoop.mapred.FileOutputCommitter - Output path is null in cleanup
2013-03-01 20:56:01,477 [main] WARN  org.apache.pig.tools.pigstats.PigStatsUtil - Failed to get RunningJob for job job_local_0001
2013-03-01 20:56:01,480 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 100% complete
2013-03-01 20:56:01,480 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Detected Local mode. Stats reported below may be incomplete
2013-03-01 20:56:01,482 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Script Statistics: 

HadoopVersion	PigVersion	UserId	StartedAt	FinishedAt	Features
1.0.0	0.10.0	admin	2013-03-01 20:55:55	2013-03-01 20:56:01	STREAMING

Success!

Job Stats (time in seconds):
JobId	Alias	Feature	Outputs
job_local_0001	A,R	STREAMING,MAP_ONLY	file:///Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_results_from_R_streaming,

Input(s):
Successfully read records from: "file:///Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_data.txt"

Output(s):
Successfully stored records in: "file:///Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_results_from_R_streaming"

Job DAG:
job_local_0001


2013-03-01 20:56:01,486 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - Success!
2013-03-01 20:56:01,570 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig features used in the script: STREAMING
2013-03-01 20:56:01,582 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MRCompiler - File concatenation threshold: 100 optimistic? false
2013-03-01 20:56:01,584 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size before optimization: 1
2013-03-01 20:56:01,584 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size after optimization: 1
2013-03-01 20:56:01,586 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig script settings are added to the job
2013-03-01 20:56:01,586 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - mapred.job.reduce.markreset.buffer.percent is not set, set to default 0.3
2013-03-01 20:56:01,599 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - Setting up single store job
2013-03-01 20:56:01,616 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 1 map-reduce job(s) waiting for submission.
2013-03-01 20:56:01,621 [Thread-12] WARN  org.apache.hadoop.mapred.JobClient - No job jar file set.  User classes may not be found. See JobConf(Class) or JobConf#setJar(String).
2013-03-01 20:56:01,670 [Thread-12] INFO  org.apache.hadoop.mapreduce.lib.input.FileInputFormat - Total input paths to process : 1
2013-03-01 20:56:01,670 [Thread-12] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths to process : 1
2013-03-01 20:56:01,673 [Thread-12] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths (combined) to process : 1
2013-03-01 20:56:01,809 [Thread-13] INFO  org.apache.hadoop.mapred.Task -  Using ResourceCalculatorPlugin : null
2013-03-01 20:56:01,816 [Thread-13] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigRecordReader - Current split being processed file:/Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_data.txt:0+26
===== Task Information Header =====
Command: mapper.py (stdin-org.apache.pig.builtin.PigStreaming/stdout-org.apache.pig.builtin.PigStreaming)
Start time: Fri Mar 01 20:56:01 EST 2013
Input-split file: file:/Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_data.txt
Input-split start-offset: 0
Input-split length: 26
=====          * * *          =====
===== Task Information Footer =====
End time: Fri Mar 01 20:56:01 EST 2013
Exit code: 0
Input records: 4
Input bytes: 536 bytes (stdin using org.apache.pig.builtin.PigStreaming)
Output records: 4
Output bytes: 584 bytes (stdout using org.apache.pig.builtin.PigStreaming)
=====          * * *          =====
2013-03-01 20:56:01,936 [Thread-13] INFO  org.apache.hadoop.mapred.Task - Task:attempt_local_0002_m_000000_0 is done. And is in the process of commiting
2013-03-01 20:56:01,941 [Thread-13] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 20:56:01,942 [Thread-13] INFO  org.apache.hadoop.mapred.Task - Task attempt_local_0002_m_000000_0 is allowed to commit now
2013-03-01 20:56:01,946 [Thread-13] INFO  org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter - Saved output of task 'attempt_local_0002_m_000000_0' to file:/Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_results_from_python_streaming
2013-03-01 20:56:02,118 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - HadoopJobId: job_local_0002
2013-03-01 20:56:02,118 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 0% complete
2013-03-01 20:56:04,796 [Thread-13] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 20:56:04,797 [Thread-13] INFO  org.apache.hadoop.mapred.Task - Task 'attempt_local_0002_m_000000_0' done.
2013-03-01 20:56:04,798 [Thread-13] WARN  org.apache.hadoop.mapred.FileOutputCommitter - Output path is null in cleanup
2013-03-01 20:56:07,131 [main] WARN  org.apache.pig.tools.pigstats.PigStatsUtil - Failed to get RunningJob for job job_local_0002
2013-03-01 20:56:07,132 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 100% complete
2013-03-01 20:56:07,132 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Detected Local mode. Stats reported below may be incomplete
2013-03-01 20:56:07,133 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Script Statistics: 

HadoopVersion	PigVersion	UserId	StartedAt	FinishedAt	Features
1.0.0	0.10.0	admin	2013-03-01 20:56:01	2013-03-01 20:56:07	STREAMING

Success!

Job Stats (time in seconds):
JobId	Alias	Feature	Outputs
job_local_0002	A,Py	STREAMING,MAP_ONLY	file:///Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_results_from_python_streaming,

Input(s):
Successfully read records from: "file:///Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_data.txt"

Output(s):
Successfully stored records in: "file:///Users/admin/Dropbox/comScore/KNN_Hadoop_Demo/06_withHadoopPig/z_results_from_python_streaming"

Job DAG:
job_local_0002


2013-03-01 20:56:07,135 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - Success!
admins-MacBook-Pro:06_withHadoopPig admin$ i

