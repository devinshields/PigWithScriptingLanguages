#!/usr/bin/python

import sys
import random

from GradeObservation import GradeObservation

def simulate_data():
  number_of_people_in_sample = 20
  number_of_assignments      = 5
  hours_to_credits_map       = lambda h: 20*h + int(random.gauss(0, 5))
  
  for pid in range(number_of_people_in_sample):
    for ass_id in range(number_of_assignments):
      hours  = int(random.gauss(4, 2))
      credits = hours_to_credits_map(hours)
      yield GradeObservation((pid, ass_id, hours, credits))

def main ():
  '''
  '''
  
  for o in simulate_data():
    print o

  pass

if __name__ == '__main__':
  main()
