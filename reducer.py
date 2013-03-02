#!/usr/bin/python
'''
  Author  : Devin Shields
  Date    : 2013-03-01
  Purpose : demonstrate of a python script running on data from the standard input
            demonstrate python with pig streaming
'''

import ast
import sys
import itertools

from GradeObservation import GradeObservation

def model(observations):
  return 'model results: {0}'.format(observations)

def reducer(line):
  ''' after converting streaming data into python objects,
      use features in the data to form a matrix
      and gather summary stats
  '''
  
  # this is a hack to demo streaming. it's a much better idea to use the pig/jython integration
  rows         = ast.literal_eval('[{0}]'.format(line[1:-1]))
  observations = [GradeObservation(r) for r in rows]
  
  # model the data
  result = model(observations)
  return result

def main ():
  '''read and map all data lines from standard-in'''

  # make a generator from standard-in lines
  groups = (l.strip() for l in sys.stdin if l.strip())

  # parse out pig groups into python objects
  results = (reducer(g) for g in groups)

  # print results to standard out
  for r in results:
    print r

if __name__ == '__main__':
  main()
