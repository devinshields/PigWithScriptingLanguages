#!/usr/bin/python

try:
  from org.apache.pig.scripting import *
except:
  pass

class ServerLogEntry:
  ''' class to encapsule data from webserver logs.
      one object equates to one line of a text log.
  '''
  def __init__(self, t=None, line=None):
    if line:
      t = line.strip().split()
    self.cookie_uid  = int(t[0])
    self.webpage_uid = int(t[1])
    self.utc_time    = int(t[2])
  @property
  def row(self):
    return (self.cookie_uid, self.webpage_uid, self.utc_time)
  def __repr__(self):
    return str(self.row)
  def __str__(self):
    return '\t'.join(map(str, self.row))

def simulate_data():
  ''' simulate some entries from a web server log
  '''
  # set some simulation parameters
  sample_size            = 10**4
  number_of_cookie_uids  = 10**1
  number_of_webpage_uids = 10**2
  (min_time, max_time) = (0, 10**4)
  
  # conditional import because of Jython errors
  import random
  def simulate_single_sample():
    cookie_uid  = random.randrange(number_of_cookie_uids)
    webpage_uid = random.randrange(number_of_webpage_uids)
    utc_time    = random.randrange(min_time, max_time)
    return ServerLogEntry(t=(cookie_uid, webpage_uid, utc_time))
  
  # run the simulation
  return [simulate_single_sample() for i in range(sample_size)]

if __name__ == '__main__':
  for r in simulate_data():
    print r
