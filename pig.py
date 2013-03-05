#!/usr/bin/python
'''
  Author  : Devin Shields
  Date    : 2013-03-01
  Purpose : demonstrate of a python script running on data from the standard input
            demonstrate python with pig streaming
'''

from org.apache.pig.scripting import *
from ServerLogEntry import ServerLogEntry
#import subprocess

@outputSchema("model_results: chararray")
def group_to_text_matrix(grp):
  
  # generate a text object that looks like a .tsv file
  rows        = [ServerLogEntry.header_line()] + [ServerLogEntry(t) for t in grp]
  lines       = map(str, rows)
  text_matrix = '\n'.join(lines)
  return text_matrix

def main():
  '''
  '''
  pig_script = """
    REGISTER 'pig.py' using jython as udf;
    REGISTER 'ServerLogEntry.py' using jython as udf;

    rows     = LOAD './data/simulated_sample.tsv' USING PigStorage() AS (cookie_uid:int, webpage_uid:int, utc_time:int);
    grps     = GROUP rows by (cookie_uid, webpage_uid);

    matrices = FOREACH grps GENERATE udf.group_to_text_matrix(rows);
    STORE matrices INTO './data/results/Py_text_matricies' USING PigStorage();

    results  = stream matrices through `reducer.R`;
    STORE results INTO './data/results/R_reduced' USING PigStorage();
  """
  
  # compile, parameterize and run the pig script
  P = Pig.compile(pig_script)  
  bound = P.bind()
  stats = bound.runSingle()

  # throw an error if the script fails
  if not stats.isSuccessful():
    raise 'failed'
  pass

if __name__ == '__main__':
  main()
