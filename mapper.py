#!/usr/bin/python
'''
  Author  : Devin Shields
  Date    : 2013-03-01
  Purpose : demonstrate of a python script running on data from the standard input
            demonstrate python with pig streaming
'''

import sys

def mapper_fn(l):
  return '{0} is now mapped.'.format(l)

def main ():
  '''read and map all data lines from standard-in'''

  # make a generator from standard-in lines
  lines = (l.strip() for l in sys.stdin if l.strip())

  # map ead line
  results = (mapper_fn(l) for l in lines) 

  # print results to standard out
  for r in results:
    print r

if __name__ == '__main__':
  main()
