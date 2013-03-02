/*
   Author  : Devin Shields
   Date    : 2013-03-01
   Purpose : demonstrate pig streaming with R and python
*/


-- read the data from HDFS
A = load '$SAMPLE' USING PigStorage() AS (person_id:int, assignment_id:int, study_hours:int, credit_points:int);


-- MAP TEST: stream the data through simple R and python scritps
--R  = stream A through `mapper.R`;
--Py = stream A through `mapper.py`;

-- store the results to disk
--STORE R INTO '$RESULTS/R_Streaming_Map' USING PigStorage();
--STORE Py INTO '$RESULTS/Python_Streaming_Map' USING PigStorage();




-- REDUCE TEST:
B = group A by person_id;
C = foreach B {
      D = order A BY assignment_id;
      generate D;
    };
Py = stream C through `reducer.py`;


--DUMP Py;
STORE Py INTO '$RESULTS/Python_Streaming_Reduce' USING PigStorage();
