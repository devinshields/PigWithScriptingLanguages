#!/usr/bin/python

class GradeObservation:
  ''' a class to encapsulate our fake/simulated data structure of student study behavior and test results
  '''
  def __init__(self, t):
    self.row           = t
    self.person_id     = t[0]
    self.assignment_id = t[1]
    self.study_hours   = t[2]
    self.credit_points = t[3]
  def __repr__(self):
    return str(self.row)
  def __str__(self):
    return '\t'.join(map(str, self.row))
