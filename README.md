PigWithScriptingLanguages
=========================

Super simple demo integrating pig with with scripting languages

Author  : Devin Shields,
Date    : 2013-03-01,
Purpose : demonstrate pig streaming with R and python

----------------------------------

This repo is a demo of using pig to stream data through scripting languages, namely R and python.

Start by looking at 'run.sh'.

----------------------------------










----------------------------------

LOG DUMP FROM SUCCESSFUL TEST:
admins-MacBook-Pro:PigWithScriptingLanguages admin$ ./run.sh
hello is now mapped.
you is now mapped.
beautiful is now mapped.
world is now mapped.
hello is now mapped.
you is now mapped.
beautiful is now mapped.
world is now mapped.
2013-03-01 21:30:09,432 [main] INFO  org.apache.pig.Main - Apache Pig version 0.10.0 (r1328203) compiled Apr 19 2012, 22:54:12
2013-03-01 21:30:09,432 [main] INFO  org.apache.pig.Main - Logging error messages to: /Users/admin/Desktop/PigWithScriptingLanguages/pig_1362191409428.log
2013-03-01 21:30:09.576 java[23396:1903] Unable to load realm info from SCDynamicStore
2013-03-01 21:30:09,756 [main] INFO  org.apache.pig.backend.hadoop.executionengine.HExecutionEngine - Connecting to hadoop file system at: file:///
2013-03-01 21:30:10,214 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig features used in the script: STREAMING
2013-03-01 21:30:10,299 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MRCompiler - File concatenation threshold: 100 optimistic? false
2013-03-01 21:30:10,316 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size before optimization: 1
2013-03-01 21:30:10,316 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size after optimization: 1
2013-03-01 21:30:10,336 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig script settings are added to the job
2013-03-01 21:30:10,350 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - mapred.job.reduce.markreset.buffer.percent is not set, set to default 0.3
2013-03-01 21:30:10,385 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - Setting up single store job
2013-03-01 21:30:10,441 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 1 map-reduce job(s) waiting for submission.
2013-03-01 21:30:10,450 [Thread-3] WARN  org.apache.hadoop.util.NativeCodeLoader - Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
2013-03-01 21:30:10,454 [Thread-3] WARN  org.apache.hadoop.mapred.JobClient - No job jar file set.  User classes may not be found. See JobConf(Class) or JobConf#setJar(String).
2013-03-01 21:30:10,522 [Thread-3] INFO  org.apache.hadoop.mapreduce.lib.input.FileInputFormat - Total input paths to process : 1
2013-03-01 21:30:10,522 [Thread-3] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths to process : 1
2013-03-01 21:30:10,528 [Thread-3] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths (combined) to process : 1
2013-03-01 21:30:10,762 [Thread-4] INFO  org.apache.hadoop.mapred.Task -  Using ResourceCalculatorPlugin : null
2013-03-01 21:30:10,776 [Thread-4] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigRecordReader - Current split being processed file:/Users/admin/Desktop/PigWithScriptingLanguages/z_data.txt:0+26
===== Task Information Header =====
Command: mapper.R (stdin-org.apache.pig.builtin.PigStreaming/stdout-org.apache.pig.builtin.PigStreaming)
Start time: Fri Mar 01 21:30:10 EST 2013
Input-split file: file:/Users/admin/Desktop/PigWithScriptingLanguages/z_data.txt
Input-split start-offset: 0
Input-split length: 26
=====          * * *          =====
2013-03-01 21:30:10,944 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - HadoopJobId: job_local_0001
2013-03-01 21:30:10,944 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 0% complete
===== Task Information Footer =====
End time: Fri Mar 01 21:30:11 EST 2013
Exit code: 0
Input records: 4
Input bytes: 536 bytes (stdin using org.apache.pig.builtin.PigStreaming)
Output records: 4
Output bytes: 584 bytes (stdout using org.apache.pig.builtin.PigStreaming)
=====          * * *          =====
2013-03-01 21:30:11,062 [Thread-4] INFO  org.apache.hadoop.mapred.Task - Task:attempt_local_0001_m_000000_0 is done. And is in the process of commiting
2013-03-01 21:30:11,066 [Thread-4] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 21:30:11,066 [Thread-4] INFO  org.apache.hadoop.mapred.Task - Task attempt_local_0001_m_000000_0 is allowed to commit now
2013-03-01 21:30:11,071 [Thread-4] INFO  org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter - Saved output of task 'attempt_local_0001_m_000000_0' to file:/Users/admin/Desktop/PigWithScriptingLanguages/z_results_from_R_streaming
2013-03-01 21:30:13,739 [Thread-4] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 21:30:13,740 [Thread-4] INFO  org.apache.hadoop.mapred.Task - Task 'attempt_local_0001_m_000000_0' done.
2013-03-01 21:30:13,742 [Thread-4] WARN  org.apache.hadoop.mapred.FileOutputCommitter - Output path is null in cleanup
2013-03-01 21:30:15,959 [main] WARN  org.apache.pig.tools.pigstats.PigStatsUtil - Failed to get RunningJob for job job_local_0001
2013-03-01 21:30:15,962 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 100% complete
2013-03-01 21:30:15,963 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Detected Local mode. Stats reported below may be incomplete
2013-03-01 21:30:15,964 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Script Statistics: 

HadoopVersion	PigVersion	UserId	StartedAt	FinishedAt	Features
1.0.0	0.10.0	admin	2013-03-01 21:30:10	2013-03-01 21:30:15	STREAMING

Success!

Job Stats (time in seconds):
JobId	Alias	Feature	Outputs
job_local_0001	A,R	STREAMING,MAP_ONLY	file:///Users/admin/Desktop/PigWithScriptingLanguages/z_results_from_R_streaming,

Input(s):
Successfully read records from: "file:///Users/admin/Desktop/PigWithScriptingLanguages/z_data.txt"

Output(s):
Successfully stored records in: "file:///Users/admin/Desktop/PigWithScriptingLanguages/z_results_from_R_streaming"

Job DAG:
job_local_0001


2013-03-01 21:30:15,968 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - Success!
2013-03-01 21:30:16,034 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig features used in the script: STREAMING
2013-03-01 21:30:16,041 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MRCompiler - File concatenation threshold: 100 optimistic? false
2013-03-01 21:30:16,042 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size before optimization: 1
2013-03-01 21:30:16,042 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MultiQueryOptimizer - MR plan size after optimization: 1
2013-03-01 21:30:16,043 [main] INFO  org.apache.pig.tools.pigstats.ScriptState - Pig script settings are added to the job
2013-03-01 21:30:16,044 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - mapred.job.reduce.markreset.buffer.percent is not set, set to default 0.3
2013-03-01 21:30:16,049 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.JobControlCompiler - Setting up single store job
2013-03-01 21:30:16,059 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 1 map-reduce job(s) waiting for submission.
2013-03-01 21:30:16,065 [Thread-12] WARN  org.apache.hadoop.mapred.JobClient - No job jar file set.  User classes may not be found. See JobConf(Class) or JobConf#setJar(String).
2013-03-01 21:30:16,088 [Thread-12] INFO  org.apache.hadoop.mapreduce.lib.input.FileInputFormat - Total input paths to process : 1
2013-03-01 21:30:16,088 [Thread-12] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths to process : 1
2013-03-01 21:30:16,089 [Thread-12] INFO  org.apache.pig.backend.hadoop.executionengine.util.MapRedUtil - Total input paths (combined) to process : 1
2013-03-01 21:30:16,206 [Thread-13] INFO  org.apache.hadoop.mapred.Task -  Using ResourceCalculatorPlugin : null
2013-03-01 21:30:16,213 [Thread-13] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigRecordReader - Current split being processed file:/Users/admin/Desktop/PigWithScriptingLanguages/z_data.txt:0+26
===== Task Information Header =====
Command: mapper.py (stdin-org.apache.pig.builtin.PigStreaming/stdout-org.apache.pig.builtin.PigStreaming)
Start time: Fri Mar 01 21:30:16 EST 2013
Input-split file: file:/Users/admin/Desktop/PigWithScriptingLanguages/z_data.txt
Input-split start-offset: 0
Input-split length: 26
=====          * * *          =====
===== Task Information Footer =====2013-03-01 21:30:16,307 [Thread-13] INFO  org.apache.hadoop.mapred.Task - Task:attempt_local_0002_m_000000_0 is done. And is in the process of commiting

End time: Fri Mar 01 21:30:16 EST 2013
Exit code: 0
Input records: 4
Input bytes: 536 bytes (stdin using org.apache.pig.builtin.PigStreaming)
Output records: 4
Output bytes: 584 bytes (stdout using org.apache.pig.builtin.PigStreaming)
=====          * * *          =====
2013-03-01 21:30:16,309 [Thread-13] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 21:30:16,309 [Thread-13] INFO  org.apache.hadoop.mapred.Task - Task attempt_local_0002_m_000000_0 is allowed to commit now
2013-03-01 21:30:16,313 [Thread-13] INFO  org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter - Saved output of task 'attempt_local_0002_m_000000_0' to file:/Users/admin/Desktop/PigWithScriptingLanguages/z_results_from_python_streaming
2013-03-01 21:30:16,561 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - HadoopJobId: job_local_0002
2013-03-01 21:30:16,562 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 0% complete
2013-03-01 21:30:19,196 [Thread-13] INFO  org.apache.hadoop.mapred.LocalJobRunner - 
2013-03-01 21:30:19,197 [Thread-13] INFO  org.apache.hadoop.mapred.Task - Task 'attempt_local_0002_m_000000_0' done.
2013-03-01 21:30:19,198 [Thread-13] WARN  org.apache.hadoop.mapred.FileOutputCommitter - Output path is null in cleanup
2013-03-01 21:30:21,574 [main] WARN  org.apache.pig.tools.pigstats.PigStatsUtil - Failed to get RunningJob for job job_local_0002
2013-03-01 21:30:21,575 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - 100% complete
2013-03-01 21:30:21,575 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Detected Local mode. Stats reported below may be incomplete
2013-03-01 21:30:21,575 [main] INFO  org.apache.pig.tools.pigstats.SimplePigStats - Script Statistics: 

HadoopVersion	PigVersion	UserId	StartedAt	FinishedAt	Features
1.0.0	0.10.0	admin	2013-03-01 21:30:16	2013-03-01 21:30:21	STREAMING

Success!

Job Stats (time in seconds):
JobId	Alias	Feature	Outputs
job_local_0002	A,Py	STREAMING,MAP_ONLY	file:///Users/admin/Desktop/PigWithScriptingLanguages/z_results_from_python_streaming,

Input(s):
Successfully read records from: "file:///Users/admin/Desktop/PigWithScriptingLanguages/z_data.txt"

Output(s):
Successfully stored records in: "file:///Users/admin/Desktop/PigWithScriptingLanguages/z_results_from_python_streaming"

Job DAG:
job_local_0002


2013-03-01 21:30:21,578 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher - Success!
admins-MacBook-Pro:PigWithScriptingLanguages admin$ 

