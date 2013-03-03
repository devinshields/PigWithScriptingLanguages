#!/usr/bin/python
'''
  Author  : Devin Shields
  Date    : 2013-03-01
  Purpose : demonstrate of a python script running on data from the standard input
            demonstrate python with pig streaming
'''

from org.apache.pig.scripting import *
from ServerLogEntry import ServerLogEntry

@outputSchema("model_results: chararray")
def model_reducer(grp):
  '''
  '''
  # do any all group reducer operations here (e.g. linear regression)
  s = 'Hello, World: ' + str(grp)
  
  return s

def main():
  '''
  '''
  pig_script = """
    REGISTER 'pig.py' using jython as udf;
    REGISTER 'ServerLogEntry.py' using jython as udf;

    rows  = LOAD './data/simulated_sample.tsv' USING PigStorage() AS (cookie_uid:int, webpage_uid:int, utc_time:int);
    grps  = GROUP rows by (cookie_uid, webpage_uid);
    model = FOREACH grps GENERATE udf.model_reducer(rows);

    STORE model INTO './data/results/PigPy' USING PigStorage();
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
